from pyparsing import Word, hexnums, Optional, alphas, alphanums

from assembler_utils import parse_register, parse_imm5, parse_imm8


def to_hex(binary: str) -> str:
    return f"{int(binary, 2):04x}"


asm_map = {
    'lsls': lambda rd, rm, imm5: "000" +
                                 "00" +
                                 parse_imm5(imm5) +
                                 parse_register(rm) +
                                 parse_register(rd),
    'lsrs': lambda rd, rm, imm5: "000" +
                                 "01" +
                                 parse_imm5(imm5) +
                                 parse_register(rm) +
                                 parse_register(rd),
    'asrs': lambda rd, rm, imm5: "000" +
                                 "10" +
                                 parse_imm5(imm5) +
                                 parse_register(rm) +
                                 parse_register(rd),
    'adds': lambda rd, rn, rm: "000" +
                               "11" +
                               "0" +
                               "0" +
                               parse_register(rm) +
                               parse_register(rn) +
                               parse_register(rd),
    'subs': lambda rd, rn, rm: "000" +
                               "11" +
                               "0" +
                               "1" +
                               parse_register(rm) +
                               parse_register(rn) +
                               parse_register(rd),

    'movs': lambda register, imm8: f"2{parse_register(register):01x}{parse_imm8(imm8):02x}",

}


class Assembler:
    def __init__(self):
        self.instruction = Word(alphas)
        # registers starts with r and followed by a number
        self.register = Word("r", alphanums)
        self.immediate = Word("#", hexnums)
        self.operand = self.register | self.immediate
        self.operand_list = self.operand + Optional("," + self.operand) + Optional("," + self.operand)
        self.comment = Word("@")
        self._parser = (self.instruction + Optional(self.operand_list) + Optional(self.comment)) | self.comment

    def parse(self, line):
        return self._parser.parseString(line)

    def assemble(self, line):
        parse = self.parse(line)
        if self.comment.re.match(line) is not None:
            return ""
        parse = list(filter(lambda x: x not in ["@", ","], parse))
        instruction = parse[0]
        args = parse[1:]
        return asm_map[instruction](*args)

    def assemble_file(self, filename):
        output = "v2.0 raw\n"
        with open(filename, 'r') as f:
            for line in f:
                output += self.parse(line)
        return output
