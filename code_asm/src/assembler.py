from pathlib import Path
from typing import Dict

from pyparsing import Word, hexnums, Optional, alphas, alphanums

from assembler_utils import assemble_register, assemble_imm5, assemble_imm8, assemble_imm3, assemble_imm7_offset, \
    assemble_imm8_offset, signed_imm8, signed_imm11, to_hex

"""
key of dict is the 
instruction name
number of registers
whether there is an immediate value,
whether there is SP and
whether there is a label
"""
asm_map: Dict = {

    # data processing
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

    # Load/store with register offset
    'str1110': lambda rt, rn, offset: "1001" + "0" + assemble_register(rt) + assemble_imm8_offset(offset),
    'ldr1110': lambda rt, rn, offset: "1001" + "1" + assemble_register(rt) + assemble_imm8_offset(offset),

    # Unconditional branch
    'b0001': lambda offset: "11100" + signed_imm11(offset),

    # Conditional branch
    'bEQ0001': lambda offset: "1101" + "0000" + signed_imm8(offset),
    'bNE0001': lambda offset: "1101" + "0001" + signed_imm8(offset),
    'bCS0001': lambda offset: "1101" + "0010" + signed_imm8(offset),
    'bHS0001': lambda offset: "1101" + "0010" + signed_imm8(offset),
    'bCC0001': lambda offset: "1101" + "0011" + signed_imm8(offset),
    'bLO0001': lambda offset: "1101" + "0011" + signed_imm8(offset),
    'bMI0001': lambda offset: "1101" + "0100" + signed_imm8(offset),
    'bPL0001': lambda offset: "1101" + "0101" + signed_imm8(offset),
    'bVS0001': lambda offset: "1101" + "0110" + signed_imm8(offset),
    'bVC0001': lambda offset: "1101" + "0111" + signed_imm8(offset),
    'bHI0001': lambda offset: "1101" + "1000" + signed_imm8(offset),
    'bLS0001': lambda offset: "1101" + "1001" + signed_imm8(offset),
    'bGE0001': lambda offset: "1101" + "1010" + signed_imm8(offset),
    'bLT0001': lambda offset: "1101" + "1011" + signed_imm8(offset),
    'bGT0001': lambda offset: "1101" + "1100" + signed_imm8(offset),
    'bLE0001': lambda offset: "1101" + "1101" + signed_imm8(offset),
    'bAL0001': lambda offset: "1101" + "1110" + signed_imm8(offset),
}


class Assembler:
    def __init__(self):
        # instructions are just letters
        self.instruction = Word(alphas).setResultsName('instruction')
        # registers starts with r and followed by a number
        self.register = Word("r", alphanums).setResultsName("register", listAllMatches=True)
        # immediate starts with a #
        self.immediate = Word("#", hexnums).setResultsName("immediate")
        # sp matches with sp
        self.sp = Word("sp").setResultsName("sp", listAllMatches=True)

        self.operand = (self.register | self.immediate | self.sp)
        self.operand_list = self.operand + Optional("," + self.operand) + Optional("," + self.operand)

        # Match comments
        self.comment = Word("@").setResultsName("comment")
        # Match Labels
        self.label = Word(".", alphanums).setResultsName("label")

        # Configure the global parser
        self._parser = (self.instruction + Optional(self.operand_list) + Optional(self.comment) + Optional(
            self.label)) | self.comment | self.label
        # A dict to store the labels addresses
        self.labels = {}
        # The program counter
        self.program_counter = 0

    def parse(self, line):
        """
        Parse a single line
        :param line: the line to parse
        :return: the parsed line
        """
        line = line.replace("[", "").replace("]", "")
        return self._parser.parseString(line)

    def assemble(self, line):
        """
        Assemble a single line
        :param line: the line to assemble
        :return: the assembled line
        """
        parse = self.parse(line).as_dict()

        # if the line is a comment or a label, return empty string
        if ('label' in parse and 'instruction' not in parse) or 'comment' in parse:
            return ""

        # build instruction key from instruction and params
        instruction = parse['instruction'] + str(len(parse.get('register', []))) + str(int('immediate' in parse)) + str(
            int('sp' in parse)) + str(int('label' in parse))

        # Build instruction arguments
        args = parse.get('register', [])
        if 'sp' in parse:
            args.append(parse['sp'])
        if 'immediate' in parse:
            args.append(parse['immediate'])
        if 'label' in parse:
            target_ins = self.labels[parse['label']] // 2
            source_ins = self.program_counter // 2
            args.append(target_ins - source_ins - 3)

        # increment program counter
        self.program_counter += 2

        # return assembled instruction
        return to_hex(asm_map[instruction](*args))

    def build_labels_dict(self, filename):
        """
        Build a dict of labels and their addresses
        :param filename: the file to parse
        """
        pointer = 0
        for line in Path(filename).read_text().splitlines():
            if line.strip() == "":
                continue
            line = self.parse(line)
            if 'label' in line and 'instruction' not in line:
                # Preparse the file to get the labels addresses
                self.labels[line.get('label')] = pointer
                continue
            if 'comment' in line:
                continue
            pointer += 2

    def assemble_file(self, filename):
        """
        Assemble a file
        :param filename: the file to assemble
        :return: a string containing the assembled file
        """
        # Preparse the file to get the labels addresses
        self.build_labels_dict(filename)
        output = []
        for line in Path(filename).read_text().splitlines():
            if line.strip() != "":
                assembled = self.assemble(line.strip())
                if assembled:
                    output.append(assembled)

        return "v2.0 raw\n" + " ".join(output)
