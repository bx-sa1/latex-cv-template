BUILD_DIR := build

all: $(BUILD_DIR)/tech.pdf $(BUILD_DIR)/bar.pdf

$(BUILD_DIR)/%.pdf: $(BUILD_DIR)/%.tex
	latexmk -interaction=nonstopmode -file-line-error -pdflatex -outdir=$(BUILD_DIR) -auxdir="$(BUILD_DIR)/aux" $<

$(BUILD_DIR)/%.tex: %.yaml template.mustache
	mkdir -p "$(BUILD_DIR)"
	mustache $< template.mustache >> $@

.PHONY: clean
clean: 
	rm -rf $(BUILD_DIR)
