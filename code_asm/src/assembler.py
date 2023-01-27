from pyparsing import Word, hexnums, Optional, alphas, alphanums

from assembler_utils import assemble_register, assemble_imm5, assemble_imm8, assemble_imm3


def to_hex(binary: str) -> str:
    return f"{int(binary, 2):04x}"


asm_map = {
    'lsls21': lambda rd, rm, imm5: "000" +
                                   "00" +
                                   assemble_imm5(imm5) +
                                   assemble_register(rm) +
                                   assemble_register(rd),
    'lsrs21': lambda rd, rm, imm5: "000" +
                                   "01" +
                                   assemble_imm5(imm5) +
                                   assemble_register(rm) +
                                   assemble_register(rd),
    'asrs21': lambda rd, rm, imm5: "000" +
                                   "10" +
                                   assemble_imm5(imm5) +
                                   assemble_register(rm) +
                                   assemble_register(rd),
    'adds30': lambda rd, rn, rm: "000" +
                                 "11" +
                                 "0" +
                                 "0" +
                                 assemble_register(rm) +
                                 assemble_register(rn) +
                                 assemble_register(rd),
    'subs30': lambda rd, rn, rm: "000" +
                                 "11" +
                                 "0" +
                                 "1" +
                                 assemble_register(rm) +
                                 assemble_register(rn) +
                                 assemble_register(rd),

    'adds21': lambda rd, rm, imm3: "000" +
                                   "11" +
                                   "1" +
                                   "0" +
                                   assemble_imm3(imm3) +
                                   assemble_register(rm) +
                                   assemble_register(rd),

    'movs11': lambda rd, imm8: "001" +
                               "00" +
                               assemble_register(rd) +
                               assemble_imm8(imm8),

    'cmp11': lambda rd, imm8: "001" +
                              "01" +
                              assemble_register(rd) +
                              assemble_imm8(imm8),
    'adds11': lambda rd, imm8: "001" +
                               "10" +
                               assemble_register(rd) +
                               assemble_imm8(imm8),

    'subs11': lambda rd, imm8: "001" +
                               "11" +
                               assemble_register(rd) +
                               assemble_imm8(imm8),
    'ands20': lambda rdn, rm: "010000" +
                              "0000" +
                              assemble_register(rm) +
                              assemble_register(rdn),
    'eors20': lambda rdn, rm: "010000" +
                              "0001" +
                              assemble_register(rm) +
                              assemble_register(rdn),
    'lsls20': lambda rdn, rm: "010000" +
                              "0010" +
                              assemble_register(rm) +
                              assemble_register(rdn),
    'lsrs20': lambda rdn, rm: "010000" +
                              "0011" +
                              assemble_register(rm) +
                              assemble_register(rdn),

}


class Assembler:
    def __init__(self):
        self.instruction = Word(alphas).setResultsName('instruction')
        # registers starts with r and followed by a number
        self.register = Word("r", alphanums).setResultsName("register", listAllMatches=True)
        self.immediate = Word("#", hexnums).setResultsName("immediate")
        self.operand = (self.register | self.immediate)
        self.operand_list = self.operand + Optional("," + self.operand) + Optional("," + self.operand)
        self.comment = Word("@").setResultsName("comment")
        self._parser = (self.instruction + Optional(self.operand_list) + Optional(self.comment)) | self.comment

    def parse(self, line):
        return self._parser.parseString(line)

    def assemble(self, line):
        parse = self.parse(line).as_dict()
        if 'comment' in parse:
            return ""
        instruction = parse['instruction'] + str(len(parse.get('register', []))) + str(int('immediate' in parse))
        args = parse.get('register', [])
        if 'immediate' in parse:
            args.append(parse['immediate'])
        return to_hex(asm_map[instruction](*args))

    def assemble_file(self, filename):
        output = []
        with open(filename, 'r') as f:
            for line in f:
                if line.strip() != "":
                    assembled = self.assemble(line.strip())
                    if assembled:
                        output.append(assembled)
        return "v2.0 raw\n" + " ".join(output)
