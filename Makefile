all: up

build:
	cd ./srcs && docker-compose build
up: build
	cd ./srcs && docker-compose up
down:
	cd ./srcs && docker-compose down; 

clean: down
	cd ./srcs && docker system prune; 

reload: down up 
