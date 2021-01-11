FROM python:3.8-alpine as builder
# RUN adduser -D worker -u 1000

# Get the python dependencies
COPY requirements.txt /app/
RUN python -m pip install -r /app/requirements.txt

# Copy the app itself
COPY django_svelte_demo /app/src
WORKDIR /app/src

# Catalog the staticfiles. This is needed in production, but in the dev
#  environment the svelte staticfiles will be drawn from
#  the svelte/public/build directory
RUN python manage.py collectstatic --noinput

# get the runtime instructions
COPY entrypoint.sh /app
RUN chmod +x /app/entrypoint.sh

# set the runtime user
# USER worker
EXPOSE 8000
ENTRYPOINT ["sh", "/app/entrypoint.sh"]
