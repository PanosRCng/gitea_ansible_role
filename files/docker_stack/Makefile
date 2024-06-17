#!/usr/bin/make

SHELL = /bin/sh


.PHONY: start stop



start:
	docker compose --env-file=env -f gitea.yml up -d


stop:
	docker compose --env-file=env -f gitea.yml down