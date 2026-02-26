.PHONY: start stop

COMPOSE_FILE = src/docker-compose.yml

start:
	docker-compose -f $(COMPOSE_FILE) up --build

stop:
	docker-compose -f $(COMPOSE_FILE) down