# AMFI NAV Extractor

This repo contains scripts to download and extract Scheme Name and Asset Value
from the AMFI NAV data file, saving it as TSV or JSON.

## Files

- `extract_nav.sh` — Shell script to download and extract TSV file
- `tsv_to_json.py` — Python script to convert TSV to JSON

## Usage

1. Run the shell script to download and extract TSV:

```bash
chmod +x extract_nav.sh
./extract_nav.sh
```

2. (Optional) Convert TSV to JSON:

```bash
python3 tsv_to_json.py
```

This will create `nav_extracted.json`.

## Requirements

- `curl` (for shell script)
- Python 3 (for JSON conversion)
