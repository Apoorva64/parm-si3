def parse_register(register):
    register = int(register[1:])
    if register < 0 or register > 7:
        raise ValueError(f"Invalid register {register}")
    return f"{register:03b}"


def parse_imm8(value):
    value = int(value[1:], 0)
    if value < 0 or value > 255:
        raise ValueError(f"Invalid imm8 {value}")
    return f"{value:08b}"


def parse_imm5(value):
    value = int(value[1:], 0)
    if value < 0 or value > 31:
        raise ValueError(f"Invalid imm5 {value}")
    return f"{value:05b}"
