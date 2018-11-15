IMAGE = roquie/docker-jinja2-cli
VERSION = latest

image:
	docker build -t $(IMAGE):$(VERSION) .

push:
	docker push $(IMAGE):$(VERSION)
