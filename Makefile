all: deps build

deps: 
	git submodule update --init --recursive

update-deps:
	git submodule foreach git pull origin master

build: 
	hugo
