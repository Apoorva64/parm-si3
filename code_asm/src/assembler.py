from pyparsing import Word, hexnums, Optional, alphas, alphanums

from .assembler_utils import assemble_register, assemble_imm5, assemble_imm8, assemble_imm3, assemble_imm7_offset, \
    assemble_imm8_offset


def to_hex(binary: str) -> str:
    return f"{int(binary, 2):04x}"


asm_map = {
    'lsls210': lambda rd, rm, imm5: "000" +
                                    "00" +
                                    assemble_imm5(imm5) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'lsrs210': lambda rd, rm, imm5: "000" +
                                    "01" +
                                    assemble_imm5(imm5) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'asrs210': lambda rd, rm, imm5: "000" +
                                    "10" +
                                    assemble_imm5(imm5) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'adds300': lambda rd, rn, rm: "000" +
                                  "11" +
                                  "0" +
                                  "0" +
                                  assemble_register(rm) +
                                  assemble_register(rn) +
                                  assemble_register(rd),
    'subs300': lambda rd, rn, rm: "000" +
                                  "11" +
                                  "0" +
                                  "1" +
                                  assemble_register(rm) +
                                  assemble_register(rn) +
                                  assemble_register(rd),

    'adds210': lambda rd, rm, imm3: "000" +
                                    "11" +
                                    "1" +
                                    "0" +
                                    assemble_imm3(imm3) +
                                    assemble_register(rm) +
                                    assemble_register(rd),

    'movs110': lambda rd, imm8: "001" +
                                "00" +
                                assemble_register(rd) +
                                assemble_imm8(imm8),

    'cmp110': lambda rd, imm8: "001" +
                               "01" +
                               assemble_register(rd) +
                               assemble_imm8(imm8),
    'adds110': lambda rd, imm8: "001" +
                                "10" +
                                assemble_register(rd) +
                                assemble_imm8(imm8),

    'subs110': lambda rd, imm8: "001" +
                                "11" +
                                assemble_register(rd) +
                                assemble_imm8(imm8),
    'subs210': lambda rd, rm, imm3: "000" +
                                    "11" +
                                    "1" +
                                    "1" +
                                    assemble_imm3(imm3) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'ands200': lambda rdn, rm: "010000" +
                               "0000" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'eors200': lambda rdn, rm: "010000" +
                               "0001" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'lsls200': lambda rdn, rm: "010000" +
                               "0010" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'lsrs200': lambda rdn, rm: "010000" +
                               "0011" +
                               assemble_register(rm) +
                               assemble_register(rdn),

    'asrs200': lambda rdn, rm: "010000" +
                               "0100" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'adcs200': lambda rdn, rm: "010000" + "0101" + assemble_register(rm) + assemble_register(rdn),
    'sbcs200': lambda rdn, rm: "010000" + "0110" + assemble_register(rm) + assemble_register(rdn),
    'rors200': lambda rdn, rm: "010000" + "0111" + assemble_register(rm) + assemble_register(rdn),
    'tst200': lambda rn, rm: "010000" + "1000" + assemble_register(rm) + assemble_register(rn),
    'rsbs210': lambda rd, rn, imm3: "010000" + "1001" + assemble_register(rn) + assemble_register(rd),
    'cmp200': lambda rn, rm: "010000" + "1010" + assemble_register(rm) + assemble_register(rn),
    'cmn200': lambda rn, rm: "010000" + "1011" + assemble_register(rm) + assemble_register(rn),
    'orrs200': lambda rdn, rm: "010000" + "1100" + assemble_register(rm) + assemble_register(rdn),
    'muls300': lambda rdm, rn, _: "010000" + "1101" + assemble_register(rn) + assemble_register(rdm),
    'bics200': lambda rdn, rm: "010000" + "1110" + assemble_register(rm) + assemble_register(rdn),
    'mvns200': lambda rd, rm: "010000" + "1111" + assemble_register(rm) + assemble_register(rd),

    'add011': lambda sp, offset: "1011" + "0000" + "0" + assemble_imm7_offset(offset),
    'sub011': lambda sp, offset: "1011" + "0000" + "1" + assemble_imm7_offset(offset),

    'str111': lambda rt, rn, offset: "1001" + "0" + assemble_register(rt) + assemble_imm8_offset(offset),
    'ldr111': lambda rt, rn, offset: "1001" + "1" + assemble_register(rt) + assemble_imm8_offset(offset),
}


class Assembler:
    def __init__(self):
        self.instruction = Word(alphas).setResultsName('instruction')
        # registers starts with r and followed by a number
        self.register = Word("r", alphanums).setResultsName("register", listAllMatches=True)
        self.immediate = Word("#", hexnums).setResultsName("immediate")
        self.sp = Word("sp").setResultsName("sp", listAllMatches=True)
        self.operand = (self.register | self.immediate | self.sp)
        self.operand_list = self.operand + Optional("," + self.operand) + Optional("," + self.operand)
        self.comment = Word("@").setResultsName("comment")
        self.label = Word(".").setResultsName("label")
        self._parser = (self.instruction + Optional(self.operand_list) + Optional(self.comment)) | self.comment
        self.stack_pointer = 0

    def parse(self, line):
        self.stack_pointer += 2
        line = line.replace("[", "").replace("]", "")
        return self._parser.parseString(line)

    def assemble(self, line):
        parse = self.parse(line).as_dict()
        print(parse)
        if 'label' in parse:
            print("label")
        if 'comment' in parse:
            return ""
        instruction = parse['instruction'] + str(len(parse.get('register', []))) + str(int('immediate' in parse)) + str(
            int('sp' in parse))
        print(instruction)
        args = parse.get('register', [])
        if 'sp' in parse:
            args.append(parse['sp'])
        if 'immediate' in parse:
            args.append(parse['immediate'])

        print(args)
        print("-------------------------------")
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
