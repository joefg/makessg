include config.mk

MD_FILES = $(shell find $(SRC) -type f -iname '*.md')
HTML_FILES = $(patsubst $(SRC)/%.md, $(DST)/%.html, $(MD_FILES))

.PHONY: all html clean build static
all: clean build html static

html: $(HTML_FILES)

clean:
	rm -rf $(DST)

build:
	mkdir $(DST)

static:
	cp -r $(SRC)/static $(DST)/static

$(DST)/%.html: $(SRC)/%.md
	pandoc \
		--from gfm+yaml_metadata_block \
		--to html \
		--template $(TEMPLATE) \
		-V sitename=$(SITENAME) \
		-V siteloc=$(SITELOC) \
		$< -o $@
