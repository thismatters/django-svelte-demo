# This demonstration of a Svelte 3 (+Rollup) deployment for django-svelte is no longer current! Please see the Svelte 4 (+Vite) [demo project built in to the django-svelte package](https://github.com/thismatters/django-svelte/tree/main/demo_project).


---

# django-svelte-demo

This demo accompanies [django-svelte](https://github.com/thismatters/django-svelte) to illustrate its usage. It is intended to illustrate how Node.js can fit into the development and build environments so that it doesn't have to be used in a production environment.

Pay special attention to the `Dockerfile`, `docker-compose.yml`, and `gitlab-ci.yml` (I'm using Gitlab CI here because it is really great and it is what I use for all my professional projects; if there is enough interest I'll try to replicate the functionality in Github CI).

## Prereqs

You'll need `docker`, `docker-compose`, and `make` for this to work.

## Usage

If you've downloaded this and want to run it you should be able to do

```
cd svelte
npm install
cd ..
make build
make run
```

And see your svelte components within a django template at [localhost:8000/](http://localhost:8000).

And if you've created a superuser with:

```
python django_svelte_demo/manage.py createsuperuser
```

You can then use the admin interface at [localhost:8000/admin](http://localhost:8000/admin) to connect that app to your data.

And when you're done you can run `make stop`.
