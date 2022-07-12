build-image:
	@ docker build -f devops/Dockerfile -t testangular:latest .
deploy:
	@ docker stack deploy -c devops/stack-int.yml testangular
rm:
	@ docker stack rm testangular
