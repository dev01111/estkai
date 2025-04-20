import __estkai__
import shutil
import sys
import os

estkai_repo = __estkai__.repo()

print(f"Install repo set to {estkai_repo}...")

print(f"Deleting {sys.argv[1]} main... (%APPDATA%\\supertuxkart\\addons\\{sys.argv[1]}\\{sys.argv[2]})")
shutil.rmtree(f"{os.getenv("APPDATA")}/supertuxkart/addons/{sys.argv[1]}/{sys.argv[2]}")
print(f"Deleting {sys.argv[1]} zipped... (%APPDATA%\\supertuxkart\\addons\\{sys.argv[1]}\\{sys.argv[2]}.zip)")
os.remove(f"{os.getenv("APPDATA")}/supertuxkart/addons/{sys.argv[1]}/{sys.argv[2]}.zip")

print(f"Recording deletion of {sys.argv[1]}...")
with open(__estkai__.log, "a") as f:
    f.write(f"{sys.argv[2]} of the {sys.argv[1]} group was deleted by eSTKai")

print("Operation completed")
