DEPEND_TARGETS += libkernel.recursive
ECHO_TARGETS += libkernel.echo
libkernel.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/libraries/libsystem/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/libraries/libsystem/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/libraries/libsystem/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/libraries/libsystem/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
