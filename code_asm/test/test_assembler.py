from pathlib import Path
from unittest import TestCase

from src.assembler import Assembler


class TestAssembler(TestCase):
    assembler: Assembler = Assembler()

    def test_parse(self):
        self.assembler = Assembler()
        print(self.assembler.parse("@ this is a comment"))

    def test_assemble(self):
        self.assembler = Assembler()
        print(self.assembler.assemble("movs r0, #0"))

    def test_assemble_file(self):
        self.assembler = Assembler()
        print(self.assembler.assemble_file("../test_integration/data_processing/1-4_instructions.s"))

    def test_data_processing(self):
        for file in Path("../test_integration/data_processing").glob("*.s"):
            with self.subTest(file.name):
                self.assembler = Assembler()
                output = self.assembler.assemble_file(file)
                with open(file.with_suffix(".bin"), "r") as f:
                    expected = f.read().strip()
                    self.assertEqual(expected, output)

    def test_shift_add_sub_mov(self):
        for file in Path("../test_integration/shift_add_sub_mov").glob("*.s"):
            with self.subTest(file.name):
                self.assembler = Assembler()
                output = self.assembler.assemble_file(file)
                with open(file.with_suffix(".bin"), "r") as f:
                    expected = f.read().strip()
                    self.assertEqual(expected, output)

    def test_load_store(self):
        self.assembler = Assembler()
        output = self.assembler.assemble_file("../test_integration/load_store/load_store.s")
        expected = Path("../test_integration/load_store/load_store.bin").read_text().strip()
        self.assertEqual(expected, output)

    def test_conditional(self):
        self.assembler = Assembler()
        output = self.assembler.assemble_file("../test_integration/conditional/branch.s")
        expected = Path("../test_integration/conditional/branch.bin").read_text().strip()
        self.assertEqual(expected, output)

    def test_miscellaneous(self):
        for file in Path("../test_integration/miscellaneous").glob("*.s"):
            with self.subTest(file.name):
                self.assembler = Assembler()
                output = self.assembler.assemble_file(file)
                with open(file.with_suffix(".bin"), "r") as f:
                    expected = f.read().strip()
                    self.assertEqual(expected, output)

    def test_advanced(self):
        for file in Path("../../code_c").glob("*.s"):
            with self.subTest(file.name):
                self.assembler = Assembler()
                output = self.assembler.assemble_file(file)
                with open(file.with_suffix(".bin"), "r") as f:
                    expected = f.read().strip()
                    self.assertEqual(expected, output)

    def test_simple_add(self):
        self.assembler = Assembler()
        output = self.assembler.assemble_file("../../code_c/simple_add.s")
        expected = Path("../../code_c/simple_add.bin").read_text().strip()
        self.assertEqual(expected, output)

    def test_fp_simple_add(self):
        self.assembler = Assembler()
        output = self.assembler.assemble_file("../../code_c/testfp.s")
        expected = Path("../../code_c/testfp.bin").read_text().strip()
        self.assertEqual(expected, output)