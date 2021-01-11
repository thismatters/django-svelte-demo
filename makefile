build:
	@mkdir -p svelte/public/build/
	@docker-compose -p django-svelte-demo build
	@docker-compose -p django-svelte-demo run node npm install
run:
	@docker-compose -p django-svelte-demo up -d
stop:
	@docker-compose -p django-svelte-demo down
applogs:
	@docker-compose -p django-svelte-demo logs -f app
nodelogs:
	@docker-compose -p django-svelte-demo logs -f node
shell:
	@docker-compose -p django-svelte-demo exec app sh
