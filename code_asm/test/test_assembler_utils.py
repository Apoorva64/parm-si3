from unittest import TestCase

import assembler_utils


class TestAssembleRegister(TestCase):

    def test_should_raise_error_when_register_is_negative(self):
        with self.assertRaises(ValueError):
            assembler_utils.assemble_register("r-1")

    def test_should_raise_error_when_register_is_greater_than_7(self):
        with self.assertRaises(ValueError):
            assembler_utils.assemble_register("r8")

    def test_should_return_0_when_register_is_r0(self):
        self.assertEqual("000", assembler_utils.assemble_register("r0"))

    def test_should_return_1_when_register_is_r1(self):
        self.assertEqual("001", assembler_utils.assemble_register("r1"))


class TestAssembleImm8(TestCase):
    def test_should_raise_error_when_value_is_negative(self):
        with self.assertRaises(ValueError):
            assembler_utils.assemble_imm8("#-1")

    def test_should_raise_error_when_value_is_greater_than_255(self):
        with self.assertRaises(ValueError):
            assembler_utils.assemble_imm8("#256")

    def test_should_return_0_when_value_is_0(self):
        self.assertEqual("00000000", assembler_utils.assemble_imm8("#0"))

    def test_should_return_1_when_value_is_1(self):
        self.assertEqual("00000001", assembler_utils.assemble_imm8("#1"))


class TestAssembleImm5(TestCase):
    def test_should_raise_error_when_value_is_negative(self):
        with self.assertRaises(ValueError):
            assembler_utils.assemble_imm5("#-1")

    def test_should_raise_error_when_value_is_greater_than_31(self):
        with self.assertRaises(ValueError):
            assembler_utils.assemble_imm5("#32")

    def test_should_return_0_when_value_is_0(self):
        self.assertEqual("00000", assembler_utils.assemble_imm5("#0"))

    def test_should_return_1_when_value_is_1(self):
        self.assertEqual("00001", assembler_utils.assemble_imm5("#1"))
