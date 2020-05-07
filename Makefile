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

patch: patch_binaries sign_binaries

sign_binaries:
	find ./Contents/Resources/bundle/ruby/2.4.0/ -name '*.bundle' -print0 \
		| xargs -0 codesign --force --options runtime --sign "Developer ID Application"
	find ./Contents/Resources/binary -name '*.dylib' -print0 \
		| xargs -0 codesign --force --options runtime --sign "Developer ID Application"

patch_binaries:
	find ./Contents/Resources/bundle/ruby/2.4.0/ -name '*.bundle' -print0 \
		| xargs -0 -n 1 install_name_tool -change \
		/usr/local/opt/gmp/lib/libgmp.10.dylib \
		@loader_path/../../../../../../binary/libgmp.10.dylib
	find ./Contents/Resources/bundle/ruby/2.4.0/ -name '*.bundle' -print0 \
		| xargs -0 -n 1 install_name_tool -change \
		/usr/local/Cellar/gmp/6.2.0/lib/libgmp.10.dylib \
		@loader_path/../../../../../../binary/libgmp.10.dylib
	find ./Contents/Resources/bundle/ruby/2.4.0/ -name '*.bundle' -print0 \
		| xargs -0 -n 1 install_name_tool -change \
		/usr/local/opt/openssl/lib/libssl.1.0.0.dylib \
		@loader_path/../../../../../../binary/libssl.1.0.0.dylib

