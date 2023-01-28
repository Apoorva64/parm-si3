from pathlib import Path

from pyparsing import Word, hexnums, Optional, alphas, alphanums

from assembler_utils import assemble_register, assemble_imm5, assemble_imm8, assemble_imm3, assemble_imm7_offset, \
    assemble_imm8_offset, signed_imm8, signed_imm11


def to_hex(binary: str) -> str:
    return f"{int(binary, 2):04x}"


asm_map = {
    'lsls2100': lambda rd, rm, imm5: "000" +
                                    "00" +
                                    assemble_imm5(imm5) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'lsrs2100': lambda rd, rm, imm5: "000" +
                                    "01" +
                                    assemble_imm5(imm5) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'asrs2100': lambda rd, rm, imm5: "000" +
                                    "10" +
                                    assemble_imm5(imm5) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'adds3000': lambda rd, rn, rm: "000" +
                                  "11" +
                                  "0" +
                                  "0" +
                                  assemble_register(rm) +
                                  assemble_register(rn) +
                                  assemble_register(rd),
    'subs3000': lambda rd, rn, rm: "000" +
                                  "11" +
                                  "0" +
                                  "1" +
                                  assemble_register(rm) +
                                  assemble_register(rn) +
                                  assemble_register(rd),

    'adds2100': lambda rd, rm, imm3: "000" +
                                    "11" +
                                    "1" +
                                    "0" +
                                    assemble_imm3(imm3) +
                                    assemble_register(rm) +
                                    assemble_register(rd),

    'movs1100': lambda rd, imm8: "001" +
                                "00" +
                                assemble_register(rd) +
                                assemble_imm8(imm8),

    'cmp1100': lambda rd, imm8: "001" +
                               "01" +
                               assemble_register(rd) +
                               assemble_imm8(imm8),
    'adds1100': lambda rd, imm8: "001" +
                                "10" +
                                assemble_register(rd) +
                                assemble_imm8(imm8),

    'subs1100': lambda rd, imm8: "001" +
                                "11" +
                                assemble_register(rd) +
                                assemble_imm8(imm8),
    'subs2100': lambda rd, rm, imm3: "000" +
                                    "11" +
                                    "1" +
                                    "1" +
                                    assemble_imm3(imm3) +
                                    assemble_register(rm) +
                                    assemble_register(rd),
    'ands2000': lambda rdn, rm: "010000" +
                               "0000" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'eors2000': lambda rdn, rm: "010000" +
                               "0001" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'lsls2000': lambda rdn, rm: "010000" +
                               "0010" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'lsrs2000': lambda rdn, rm: "010000" +
                               "0011" +
                               assemble_register(rm) +
                               assemble_register(rdn),

    'asrs2000': lambda rdn, rm: "010000" +
                               "0100" +
                               assemble_register(rm) +
                               assemble_register(rdn),
    'adcs2000': lambda rdn, rm: "010000" + "0101" + assemble_register(rm) + assemble_register(rdn),
    'sbcs2000': lambda rdn, rm: "010000" + "0110" + assemble_register(rm) + assemble_register(rdn),
    'rors2000': lambda rdn, rm: "010000" + "0111" + assemble_register(rm) + assemble_register(rdn),
    'tst2000': lambda rn, rm: "010000" + "1000" + assemble_register(rm) + assemble_register(rn),
    'rsbs2100': lambda rd, rn, imm3: "010000" + "1001" + assemble_register(rn) + assemble_register(rd),
    'cmp2000': lambda rn, rm: "010000" + "1010" + assemble_register(rm) + assemble_register(rn),
    'cmn2000': lambda rn, rm: "010000" + "1011" + assemble_register(rm) + assemble_register(rn),
    'orrs2000': lambda rdn, rm: "010000" + "1100" + assemble_register(rm) + assemble_register(rdn),
    'muls3000': lambda rdm, rn, _: "010000" + "1101" + assemble_register(rn) + assemble_register(rdm),
    'bics2000': lambda rdn, rm: "010000" + "1110" + assemble_register(rm) + assemble_register(rdn),
    'mvns2000': lambda rd, rm: "010000" + "1111" + assemble_register(rm) + assemble_register(rd),

    'add0110': lambda sp, offset: "1011" + "0000" + "0" + assemble_imm7_offset(offset),
    'sub0110': lambda sp, offset: "1011" + "0000" + "1" + assemble_imm7_offset(offset),

    'str1110': lambda rt, rn, offset: "1001" + "0" + assemble_register(rt) + assemble_imm8_offset(offset),
    'ldr1110': lambda rt, rn, offset: "1001" + "1" + assemble_register(rt) + assemble_imm8_offset(offset),

    'b0001': lambda offset: "11100" + signed_imm11(offset),

    'bEQ0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bNE0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bCS0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bHS0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bCC0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bLO0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bMI0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bPL0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bVS0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bVC0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bHI0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bLS0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bGE0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bLT0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bGT0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bLE0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bAL0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
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
        self.label = Word(".", alphanums).setResultsName("label")
        self._parser = (self.instruction + Optional(self.operand_list) + Optional(self.comment) + Optional(
            self.label)) | self.comment | self.label
        self.labels = {}
        self.stack_pointer = 0

    def parse(self, line):
        self.stack_pointer += 2
        line = line.replace("[", "").replace("]", "")
        return self._parser.parseString(line)

    def assemble(self, line):
        parse = self.parse(line).as_dict()
        if 'label' in parse and 'instruction' not in parse:
            return ""
        if 'comment' in parse:
            return ""
        instruction = parse['instruction'] + str(len(parse.get('register', []))) + str(int('immediate' in parse)) + str(
            int('sp' in parse)) + str(int('label' in parse))
        args = parse.get('register', [])
        if 'sp' in parse:
            args.append(parse['sp'])
        if 'immediate' in parse:
            args.append(parse['immediate'])
        if 'label' in parse:
            n_cible = self.labels[parse['label']]
            n_source = self.stack_pointer // 2
            args.append(n_cible - n_source - 3)
        return to_hex(asm_map[instruction](*args))

    def build_labels_dict(self, filename):
        pointer = 0
        for line in Path(filename).read_text().splitlines():
            pointer += 1
            if line.startswith("."):
                self.labels[line.strip(":")] = pointer

    def assemble_file(self, filename):
        self.build_labels_dict(filename)
        output = []
        with open(filename, 'r') as f:
            for line in f:
                if line.strip() != "":
                    assembled = self.assemble(line.strip())
                    if assembled:
                        output.append(assembled)
        return "v2.0 raw\n" + " ".join(output)
