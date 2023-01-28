from pathlib import Path
from unittest import TestCase

from src.assembler import Assembler


class TestAssembler(TestCase):
    assembler: Assembler = Assembler()

    def test_parse(self):
        print(self.assembler.parse("@ this is a comment"))

    def test_assemble(self):
        print(self.assembler.assemble("ands r3, r1"))

    def test_assemble_file(self):
        print(self.assembler.assemble_file("../test_integration/data_processing/1-4_instructions.s"))

    def test_data_processing(self):
        for file in Path("../test_integration/data_processing").glob("*.s"):
            with self.subTest(file.name):
                output = self.assembler.assemble_file(file)
                with open(file.with_suffix(".bin"), "r") as f:
                    expected = f.read().strip()
                    self.assertEqual(expected, output)

    def test_shift_add_sub_mov(self):
        for file in Path("../test_integration/shift_add_sub_mov").glob("*.s"):
            with self.subTest(file.name):
                output = self.assembler.assemble_file(file)
                with open(file.with_suffix(".bin"), "r") as f:
                    expected = f.read().strip()
                    self.assertEqual(expected, output)

    def test_load_store(self):
        output = self.assembler.assemble_file("../test_integration/load_store/load_store.s")
        expected = Path("../test_integration/load_store/load_store.bin").read_text().strip()
        self.assertEqual(expected, output)

    def test_conditional(self):
        output = self.assembler.assemble_file("../test_integration/conditional/branch.s")
        expected = Path("../test_integration/conditional/branch.bin").read_text().strip()
        self.assertEqual(expected, output)

    def test_miscellaneous(self):
        for file in Path("../test_integration/miscellaneous").glob("*.s"):
            with self.subTest(file.name):
                output = self.assembler.assemble_file(file)
                with open(file.with_suffix(".bin"), "r") as f:
                    expected = f.read().strip()
                    self.assertEqual(expected, output)
