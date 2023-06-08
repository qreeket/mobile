get-protos-submodule:
	@echo "initializing protos submodule..." && \
	git submodule add --progress --force https://github.com/qreeket/protos.git protos

update-protos-submodule:
	@echo "initializing protos submodule..." && \
	git submodule update --init --recursive

protos-mobile:
	@echo "generating protos for mobile..." && \
	chmod +x gen-mobile-protos.sh && ./gen-mobile-protos.sh

run-builder-for-mobile:
	@echo "running builder for mobile..." && \
	dart run build_runner watch --delete-conflicting-outputs

build-app-bundle:
	@echo "running builder for mobile..." && \
    flutter build appbundle --release --no-tree-shake-icons

gen-user-avatars:
	@echo "generating user avatars..." && \
		cd assets/avatars && \
		dicebear adventurer . --format png --count 30

.PHONY: get-protos-submodule update-protos-submodule protos-mobile run-builder-for-mobile build-app-bundle gen-user-avatars