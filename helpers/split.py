import fileinput

lines = []
for line in fileinput.input():
    components = line.split(".")
    lines.extend(map(lambda x: x.strip() + ".", line.split(".")))
print("\n".join(lines))
