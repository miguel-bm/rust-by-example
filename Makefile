compile:
	scripts/compile.sh $(chapter)

run:
	scripts/run.sh $(chapter)

comprun:
	scripts/compile.sh $(chapter)
	scripts/run.sh $(chapter)