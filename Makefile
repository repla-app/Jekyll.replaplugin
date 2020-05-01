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

sign_binaries:
	codesign --force --options runtime --sign "Developer ID Application" \
		Contents/Resources/bundle/ruby/2.4.0/gems/ffi-1.12.2/lib/ffi_c.bundle

patch_binaries:
	install_name_tool -change \
		/usr/local/opt/gmp/lib/libgmp.10.dylib \
		@loader_path/../../../../../../binary/libgmp.10.dylib \
		Contents/Resources/bundle/ruby/2.4.0/gems/ffi-1.12.2/lib/ffi_c.bundle
