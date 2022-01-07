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

fclean: down
	a=$(sudo docker ps -a q)
	sudo docker rm 
	sudo docker image prune
