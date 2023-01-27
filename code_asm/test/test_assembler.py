from unittest import TestCase

from assembler import Assembler


class TestAssembler(TestCase):
    assembler: Assembler = Assembler()

    def test_parse(self):
        print(self.assembler.parse("@ this is a comment"))

    def test_assemble(self):
        print(self.assembler.assemble("ands r3, r1"))

    def test_assemble_file(self):
        print(self.assembler.assemble_file("../test_integration/data_processing/1-4_instructions.s"))
