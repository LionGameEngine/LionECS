SOURCERY = bundle exec Pods/Sourcery/bin/sourcery

sourcery: auto-queries auto-mocks

auto-queries:
	@$(SOURCERY) --config tools/sourcery/ECS/AutoQueries.sourcery.yml --disableCache

auto-mocks:
	@$(SOURCERY) --config tools/sourcery/ECS/AutoMockable.sourcery.yml --disableCache
