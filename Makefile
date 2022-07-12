build-dev:
  @ docker build -f devops/Dockerfile -t testangular:latest .

run:
  @ docker run -it --rm --name=test-tendencias -p 8090:80 testangular:latest
