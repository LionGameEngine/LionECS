SOURCERY = bundle exec Pods/Sourcery/bin/sourcery

setup: bundler	## Install all tools
	@echo "--- Updating Homebrew..."
	@brew update
	# Modify which tools would you like to use here
	$(call brew_install,xcodegen)

bundler:
	@echo "--- Installing bundler..."
	@gem install bundler -v 2.1.2

generate:
	@xcodegen generate
	@bundle exec pod install
	@make sourcery

sourcery: auto-chunk auto-queries auto-mocks

auto-chunk:
	@$(SOURCERY) --config tools/sourcery/ECS/AutoChunk+PEntityIterable.sourcery.yml --disableCache

auto-queries:
	@$(SOURCERY) --config tools/sourcery/ECS/AutoPEntityIterable.sourcery.yml --disableCache
	@$(SOURCERY) --config tools/sourcery/ECS/AutoEntityQueryResult.sourcery.yml --disableCache

auto-mocks:
	@$(SOURCERY) --config tools/sourcery/ECS/AutoMockable.sourcery.yml --disableCache

define brew_install
	@echo "--- Installing $(1)..."
	@(brew ls --versions $(1) || brew install $(1))
	@(brew outdated $(1) || brew upgrade $(1))
endef
