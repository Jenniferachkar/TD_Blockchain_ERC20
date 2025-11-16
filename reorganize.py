import os
import shutil

# Clean base folder
def reset_folder(path):
    if os.path.exists(path):
        shutil.rmtree(path)
    os.makedirs(path)

print("🧹 Cleaning old structure...")
reset_folder("contracts")
print("✔️ Cleaned")

# Create structure
print("📁 Creating new folder structure...")

paths = [
    "contracts/evaluator",
    "contracts/exercises",
    "contracts/solutions"
]

for p in paths:
    os.makedirs(p)
    print("Created:", p)

# Create empty exercise solutions
print("\n📝 Creating empty solution files...")

for i in range(1, 16):
    filename = f"contracts/solutions/Ex{i}_solution.sol"
    with open(filename, "w") as f:
        f.write(f"// Ex{i} solution – Jennifer El Achkar\npragma solidity ^0.8.27;\n\n")
    print("Created:", filename)

print("\n🎉 DONE! Your empty structure is ready.")
