
MKDOCS_ROOT := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SITE_DIR    := $(MKDOCS_ROOT)/site
POETRY      := poetry run

build:
	$(POETRY) mkdocs build --config-file $(MKDOCS_ROOT)/ja/mkdocs.yml --site-dir $(SITE_DIR)/ja/

clean:
	rm -rf  $(SITE_DIR)
