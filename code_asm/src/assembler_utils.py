def assemble_register(register):
    register = int(register[1:])
    if register < 0 or register > 7:
        raise ValueError(f"Invalid register {register}")
    return f"{register:03b}"


def assemble_imm8(value):
    value = int(value[1:], 0)
    if value < 0 or value > 255:
        raise ValueError(f"Invalid imm8 {value}")
    return f"{value:08b}"


def assemble_imm7_offset(value):
    value = int(value[1:], 0)
    if value < 0 or value > 127:
        raise ValueError(f"Invalid imm7 {value}")
    value //= 4
    return f"{value:07b}"


def assemble_imm8_offset(value):
    value = int(value[1:], 0)
    if value < 0 or value > 255:
        raise ValueError(f"Invalid imm8 {value}")
    value //= 4
    return f"{value:08b}"


def assemble_imm5(value):
    value = int(value[1:], 0)
    if value < 0 or value > 31:
        raise ValueError(f"Invalid imm5 {value}")
    return f"{value:05b}"


def assemble_imm3(value):
    value = int(value[1:], 0)
    if value < 0 or value > 7:
        raise ValueError(f"Invalid imm3 {value}")
    return f"{value:03b}"


def signed_imm8(value: int) -> str:
    return signed_immn(value, 8)


def signed_imm11(value: int) -> str:
    print(f"value: {value}")
    return signed_immn(value, 11)


def signed_immn(value: int, n: int) -> str:
    if value < 0:
        value = (1 << n) + value
    return f"{value:0{n}b}"
