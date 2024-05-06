.DEFAULT_GOAL := all

PROJECT = FontaineWintenberger

.PHONY: all build blueprint blueprint-dev analyze serve

all : build blueprint

build:
	(lake -Kenv=dev update doc-gen4 && lake -Kenv=dev exe cache get && lake -Kenv=dev build && lake -Kenv=dev build ${PROJECT}:docs)

blueprint: build
	(cd blueprint && inv all && cp -r ../.lake/build/doc ./web/)

blueprint-dev:
	(cd blueprint && inv all)

analyze:
	(python3 blueprint/blueprint_auto.py -p ${PROJECT})

serve: blueprint-dev analyze
	(cd blueprint && inv serve)

update:
	lake -Kenv=dev update -R