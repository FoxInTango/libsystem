DEPEND_TARGETS += libkernel.recursive
ECHO_TARGETS += libkernel.echo
libkernel.recursive:
	@echo SUPER_MAKE_DIR=/Users/lidali/alpine/libraries/libsystem/               >> /Users/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/Users/lidali/alpine/libraries/libsystem/.make >> /Users/lidali/alpine/libraries/libkernel/.make/super
	cd /Users/lidali/alpine/libraries/libkernel/ && /Applications/Xcode.app/Contents/Developer/usr/bin/make recursive && /Applications/Xcode.app/Contents/Developer/usr/bin/make install
	-rm /Users/lidali/alpine/libraries/libkernel/.make/super
libkernel.echo:
	@echo SUPER_MAKE_DIR=/Users/lidali/alpine/libraries/libsystem/               >> /Users/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/Users/lidali/alpine/libraries/libsystem/.make >> /Users/lidali/alpine/libraries/libkernel/.make/super
	cd /Users/lidali/alpine/libraries/libkernel/ && /Applications/Xcode.app/Contents/Developer/usr/bin/make echo
	-rm /Users/lidali/alpine/libraries/libkernel/.make/super
