import sys
import json


print(json.load(sys.stdin)[sys.argv[1]])