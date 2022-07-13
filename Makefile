build-dev:
	@ docker build -f devops/Dockerfile -t testfrontend:latest .
deploy:
	@ docker stack deploy -c devops/stack.yml tendencias-na
rm:
	@ docker stack rm tendencias-na

