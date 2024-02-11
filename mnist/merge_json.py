# take 3 arguments of json files and merge them into one json file

import json

def merge_json(json1, json2, json3, output):
    with open(json1) as f:
        data1 = json.load(f)
    with open(json2) as f:
        data2 = json.load(f)
    with open(json3) as f:
        data3 = json.load(f)
    data1.update(data2)
    data1.update(data3)
    with open(output, 'w') as f:
        json.dump(data1, f)

if __name__ == '__main__':
    import sys
    merge_json(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])