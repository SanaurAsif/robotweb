import json
import jsonpath


def read_locator(name):
    resp = json.loads(open("D:\\Downloads\\WorkSpace\\JSONFIles\\elements.json", "r").read())
    return jsonpath.jsonpath(resp, name)[0]
