
# make file. Best used to test the building of the Dockerfiles when they do not build in actions
#

VERSION :=`cat VERSION`
MAINVERSION :=`cat ../../VERSION`

build: proxy, apps

proxy:
	cd inst/serve ; \
	docker build  --tag="resilientucsd/resilient-games-proxy"  --file=./proxy/Dockerfile . ; \
	docker tag resilientucsd/resilient-games-proxy:$(MAINVERSION) resilientucsd/resilient-games-proxy:latest
apps:
	docker build  --tag="resilientucsd/resilient-games-app"  --file=./Dockerfile . ; \
	docker tag resilientucsd/resilient-games-app:$(MAINVERSION) resilientucsd/resilient-games-app:latest