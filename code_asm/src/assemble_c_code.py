from pathlib import Path

from assembler import Assembler

if __name__ == '__main__':
    for file in Path("../../code_c/").glob("*.s"):
        assembler: Assembler = Assembler()
        output = assembler.assemble_file(file)
        # save output to file
        with open(file.with_suffix(".bin"), "w") as f:
            f.write(output)
