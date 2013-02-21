

css:
	@./node_modules/.bin/stylus style.styl -o build/

template.js: template.html
	@component convert $<

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
