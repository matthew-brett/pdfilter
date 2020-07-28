SOURCE_ROOT=some_markdown

build:
	pandoc -f markdown $(SOURCE_ROOT).md -o $(SOURCE_ROOT).html --filter ./pdfilter.py

json:
	pandoc -f markdown $(SOURCE_ROOT).md -t json | python -m json.tool > $(SOURCE_ROOT).json
