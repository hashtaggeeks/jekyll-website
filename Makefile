SHELL := /bin/bash
NPM := npm
VENDOR_DIR = assets/vendor/
JEKYLL := jekyll

install: $(PROJECT_DEPS)
	$(NPM) install

update: $(PROJECT_DEPS)
	$(NPM) update

include-npm-deps:
	mkdir -p $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js.map $(VENDOR_DIR)

build: include-npm-deps
	$(JEKYLL) build

serve: include-npm-deps
	JEKYLL_ENV=production $(JEKYLL) serve --livereload