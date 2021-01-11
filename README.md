# django-svelte-demo

This demo accompanies [django-svelte](https://github.com/thismatters/django-svelte) to illustrate its usage. It is intended to illustrate how Node.js can fit into the development and build environments so that it doesn't have to be used in a production environment.

Pay special attention to the `Dockerfile`, `docker-compose.yml`, and `gitlab-ci.yml` (I'm using Gitlab CI here because it is really great and it is what I use for all my professional projects; if there is enough interest I'll try to replicate the functionality in Github CI).

## Prereqs

You'll need `docker`, `docker-compose`, and `make` for this to work.

## Usage

If you've downloaded this and want to run it you should be able to use `make build`, `make run` and `make stop` to build the project, run the project, and stop the project respectively. While running navigate your browser to http://localhost:8000 to see the components at work.
