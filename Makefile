SOURCERY = bundle exec Pods/Sourcery/bin/sourcery

sourcery: auto-mocks

auto-mocks:
	@$(SOURCERY) --config tools/sourcery/ECS/AutoMockable.sourcery.yml --disableCache
