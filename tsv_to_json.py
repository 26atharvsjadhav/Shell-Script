import csv
import json

def tsv_to_json(tsv_file, json_file):
    with open(tsv_file, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f, delimiter="\t")
        data = list(reader)

    with open(json_file, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)

    print(f"Converted {tsv_file} to {json_file}")

if __name__ == "__main__":
    tsv_to_json("nav_extracted.tsv", "nav_extracted.json")
