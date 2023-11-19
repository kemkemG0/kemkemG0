# Makefile for converting Markdown to PDF using Docker
# Default target
all: pdf

build:
	docker build -t markdown-to-pdf .

# Target for PDF conversion
pdf:
	docker run \
    --rm -v "$(PWD):/data" markdown-to-pdf \
    --from=markdown --to=pdf --pdf-engine=xelatex \
    -V fontsize=9pt -V geometry:margin=0.20in -V pagestyle=empty -V linkcolor=blue -V mainfont="Times New Roman" -V paragraph-spacing=0.3mm \
    -o "Kensin_Tanaka_Resume.pdf" "README.md"



.PHONY: all pdf
