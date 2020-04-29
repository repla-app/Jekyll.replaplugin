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

# The following files at `/gems/specifications/` we're replace by fake shims:
# `rubocop-0.50.0.gemspec`
# `w3c_validators-1.3.0.gemspec`
# `html-proofer-3.0.0.gemspec`
install_gems:
	cd ./Contents/Resources/ &&\
		GEM_HOME=gems gem install --no-document jekyll -v 3.8.5 &&\
		GEM_HOME=gems gem install --no-document bundler -v 2.0.2 &&\
		GEM_HOME=gems gem install --no-document minima
		GEM_HOME=gems gem install --no-document unicode-display_width
