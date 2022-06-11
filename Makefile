ch:
	chmod 777 mysite/entrypoint.prod.sh

up:
	docker-compose -f docker-compose.prod.yml up -d --build

down:
	docker stop $$(docker ps -a -q)

rm:
	docker volume prune && cd .. && rm -r TestDocker/
