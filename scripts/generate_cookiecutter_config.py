import json
from collections import OrderedDict
from pathlib import Path

import oyaml as yaml

cookie_path = Path("./fastapi_cookie_cutter.json")
out_path = Path("./fastapi_cookie_cutter/fastapi_cookie_cutter-config-file.yml")

with open(cookie_path) as f:
    cookie_config = json.load(f)
config_out = OrderedDict()

for key, value in cookie_config.items():
    if key.startswith("_"):
        config_out[key] = value
    else:
        config_out[key] = "{{ fastapi_cookie_cutter." + key + " }}"
config_out["_template"] = "./"

with open(out_path, "w") as out_f:
    out_f.write(yaml.dump({"default_context": config_out}, line_break=None, width=200))
