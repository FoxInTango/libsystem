DEPEND_TARGETS += libplatform.recursive
ECHO_TARGETS += libplatform.echo
libplatform.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/libraries/libsystem/               >> /home/lidali/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/libraries/libsystem/.make >> /home/lidali/alpine/libraries/libplatform/.make/super
	cd /home/lidali/alpine/libraries/libplatform/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libplatform/.make/super
libplatform.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/libraries/libsystem/               >> /home/lidali/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/libraries/libsystem/.make >> /home/lidali/alpine/libraries/libplatform/.make/super
	cd /home/lidali/alpine/libraries/libplatform/ && make echo
	-rm /home/lidali/alpine/libraries/libplatform/.make/super
