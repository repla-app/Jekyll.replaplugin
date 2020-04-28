.PHONY: ci ac autocorrect lint runtime recompile_fsevents bundle_update

ci: lint
ac: autocorrect

lint:
	rubocop

autocorrect:
	rubocop -a

test:
	./Contents/Resources/test/run_tests.sh

bundle_update:
	cd ./Contents/Resources/ &&\
		bundle update repla --full-index &&\
		bundle update &&\
		bundle clean &&\
		bundle install --standalone --binstubs

install_gems:
	GEM_HOME=gems cd ./Contents/Resources/ &&\
		gem install jekyll -v 3.8.5 &&\
		gem install bundler -v 2.0.2 &&\
		gem install minima
