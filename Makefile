.PHONY: build up down

build:
	set -a && . .env && docker build -t samples:$$VERSION .

up:
	docker compose up

down:
	docker compose down
