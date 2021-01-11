build:
	@docker-compose -p django-svelte-demo build
run:
	@docker-compose -p django-svelte-demo up -d
stop:
	@docker-compose -p django-svelte-demo down
logs:
	@docker-compose -p django-svelte-demo logs -f app