from unittest import TestCase

import assembler_utils


class TestParseRegister(TestCase):

    def test_should_raise_error_when_register_is_negative(self):
        with self.assertRaises(ValueError):
            assembler_utils.parse_register("r-1")

    def test_should_raise_error_when_register_is_greater_than_7(self):
        with self.assertRaises(ValueError):
            assembler_utils.parse_register("r8")

    def test_should_return_0_when_register_is_r0(self):
        self.assertEqual(0, assembler_utils.parse_register("r0"))

    def test_should_return_1_when_register_is_r1(self):
        self.assertEqual(1, assembler_utils.parse_register("r1"))


class TestParseImm8(TestCase):
    def test_should_raise_error_when_value_is_negative(self):
        with self.assertRaises(ValueError):
            assembler_utils.parse_imm8("#-1")

    def test_should_raise_error_when_value_is_greater_than_255(self):
        with self.assertRaises(ValueError):
            assembler_utils.parse_imm8("#256")

    def test_should_return_0_when_value_is_0(self):
        self.assertEqual(0, assembler_utils.parse_imm8("#0"))

    def test_should_return_1_when_value_is_1(self):
        self.assertEqual(1, assembler_utils.parse_imm8("#1"))


class TestParseImm5(TestCase):
    def test_should_raise_error_when_value_is_negative(self):
        with self.assertRaises(ValueError):
            assembler_utils.parse_imm5("#-1")

    def test_should_raise_error_when_value_is_greater_than_31(self):
        with self.assertRaises(ValueError):
            assembler_utils.parse_imm5("#32")

    def test_should_return_0_when_value_is_0(self):
        self.assertEqual(0, assembler_utils.parse_imm5("#0"))

    def test_should_return_1_when_value_is_1(self):
        self.assertEqual(1, assembler_utils.parse_imm5("#1"))
