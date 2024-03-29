all: itermediate.tex
	@echo "Assembling and building..."
	pandoc \
		--include-before-body "./intermediate.tex" \
		--defaults=./defaults.yaml
	@rm "./intermediate.tex"

itermediate.tex:
	@echo "Building intermediates..."
	pandoc \
		--defaults=./intermediate-defaults.yaml \
		-o "intermediate.tex"
