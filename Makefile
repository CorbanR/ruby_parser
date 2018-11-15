default: cleanup

gem: Dockerfile
	mkdir -p pkg
	docker-compose build
	docker-compose run --rm ruby-parser rake package
cleanup:
	rm -rf pkg/*
	docker-compose down
	docker system prune -f
