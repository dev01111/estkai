import urllib.request


estkai_version="1.8"
estkai_latest="https://github.com/dev01111/estkai/raw/python/latest.txt"
estkai_latest_str = ""


print("Checking for updates...")

with urllib.request.urlopen(estkai_latest) as latest_req:
    estkai_latest_str = latest_req.read().decode('utf-8').strip()
    if(estkai_latest_str == estkai_version):
        print("No updates available")
    else:
        print(f"Update {estkai_latest_str} available, get it from GitHub.")
