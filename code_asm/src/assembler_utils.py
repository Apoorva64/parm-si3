def assemble_register(register: str) -> str:
    """
    Assemble a register string into a 3-bit binary string.
    :param register: the register to assemble
    :return: the register as a 3-bit binary string
    """
    register = int(register[1:])
    if register < 0 or register > 7:
        raise ValueError(f"Invalid register {register}")
    return f"{register:03b}"


def assemble_imm8(value: str) -> str:
    """
    Assembly an immediate string into a 8-bit binary string.
    :param value: the immediate value to assemble
    :return: the immediate value as an 8-bit binary string
    """
    value = int(value[1:], 0)
    if value < 0 or value > 255:
        raise ValueError(f"Invalid imm8 {value}")
    return f"{value:08b}"


def assemble_imm7_offset(value: str) -> str:
    """
    Assembly an immediate string into a 7-bit binary string. The immediate is divided
    :param value: the immediate value to assemble
    :return: the immediate value as a 7-bit binary string
    """
    value = int(value[1:], 0)
    if value < 0 or value > 127:
        raise ValueError(f"Invalid imm7 {value}")
    value //= 4
    return f"{value:07b}"


def assemble_imm8_offset(value: str) -> str:
    """
    Assembly an immediate string into a 8-bit binary string. The immediate is divided by 4
    :param value: the immediate value to assemble
    :return: the immediate value as a 8-bit binary string
    """
    value = int(value[1:], 0)
    if value < 0 or value > 255:
        raise ValueError(f"Invalid imm8 {value}")
    value //= 4
    return f"{value:08b}"


def assemble_imm5(value: str) -> str:
    """
    Assembly an immediate string into a 5-bit binary string.
    :param value: the immediate value to assemble
    :return: the immediate value as a 5-bit binary string
    """
    value = int(value[1:], 0)
    if value < 0 or value > 31:
        raise ValueError(f"Invalid imm5 {value}")
    return f"{value:05b}"


def assemble_imm3(value: str) -> str:
    """
    Assemble an immediate string into a 3-bit binary string.
    :param value: the immediate value to assemble
    :return: the immediate value as a 3-bit binary string
    """
    value = int(value[1:], 0)
    if value < 0 or value > 7:
        raise ValueError(f"Invalid imm3 {value}")
    return f"{value:03b}"


def signed_imm8(value: int) -> str:
    """
    Assemble a signed immediate value into a 8-bit binary string.
    :param value: the immediate value to assemble
    :return: the immediate value as a 8-bit binary string
    """
    return signed_immn(value, 8)


def signed_imm11(value: int) -> str:
    """
    Assemble a signed immediate value into a 11-bit binary string.
    :param value: the immediate value to assemble
    :return: the immediate value as a 11-bit binary string
    """
    return signed_immn(value, 11)


def signed_immn(value: int, n: int) -> str:
    """
    Return the 2's complement of a signed integer as a binary string.
    :param value: the number to convert
    :param n: the number of bits to use
    :return: the 2's complement of the number as a binary string
    """
    if value < 0:
        value = (1 << n) + value
    return f"{value:0{n}b}"


def to_hex(binary: str) -> str:
    return f"{int(binary, 2):04x}"
