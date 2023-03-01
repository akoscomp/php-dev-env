#version: 8.0

#.PHONY: help start startl up pull logs restart restartl stop stoprm rm clean status ps deploy config

.PHONY: help
help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: start
start:	        ## Start in backgroun
	@docker-compose up -d --remove-orphans

.PHONY: startl
startl:         ## Start with logs in background
	@docker-compose up -d --remove-orphans
	@docker-compose logs -f --tail="500"

.PHONY: up
up:             ## Start in foreground
	@docker-compose up

.PHONY: startb
startb:
	@docker-compose up --build

.PHONY: startbl
startbl:
	@docker-compose up -d --build
	@docker-compose logs -f --tail="100"

.PHONY: build
build:
	@docker-compose up --build

.PHONY: pull
pull:           ## Pull images
	@docker-compose pull

.PHONY: logs
logs:           ## Show logs
	@docker-compose logs -f --tail="300"

.PHONY: restart
restart:        ## Restart
	@docker-compose restart

.PHONY: startl
restartl:       ## Restart with logs
	@docker-compose restart
	@docker-compose logs -f --tail="50"

.PHONY: restartrm
restartrm:      ## Restart with remove
	@docker-compose stop
	@docker-compose rm -f
	@docker-compose up -d

.PHONY: stop
stop:           ## Stop
	@docker-compose stop

.PHONY: stoprm
stoprm:         ## Stop and remove containers
	@docker-compose stop
	@docker-compose rm -f

.PHONY: rm
rm:             ## Remove containers
	@docker-compose rm

.PHONY: clean
clean:          ## Clean - docker-comnpose down
	@docker-compose down

.PHONY: status
status:         ## Show status
	@docker-compose ps

.PHONY: ps
ps: status      ## Show status

.PHONY: deploy
deploy: pull down startl  ## Deploy == ALL ops: pull images,stop and remove containers, start, print logs

.PHONY: config
config: ## Show docker-compose configured with env
	@docker-compose config

## Tamas Makefile
.PHONY: run
run: pull down ## pull and down
	docker-compose up -d --remove-orphans

.PHONY: down
down: ## down
	docker-compose down
