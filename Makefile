# Global Settings
NO_COLOR=\033[0m
TEXT_COLOR=\033[1m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

help:
	@echo "$(OK_COLOR)-----------------------Commands:----------------------$(NO_COLOR)"
	@echo "$(TEXT_COLOR) help                         : This help listing $(NO_COLOR)"
	
	@echo "$(TEXT_COLOR)\n                   Build $(NO_COLOR)"
	@echo "$(TEXT_COLOR) build                        : Builds all necessary scripts $(NO_COLOR)"
	@echo "$(TEXT_COLOR) build ubuntu                 : Builds ubuntu dockers $(NO_COLOR)"
	@echo "$(TEXT_COLOR) build perl                   : Builds perl dockers $(NO_COLOR)"
	@echo "$(TEXT_COLOR) build ddg-hack               : Builds ddg-hack dockers $(NO_COLOR)"

#  @echo "$(TEXT_COLOR)\n                   Utils $(NO_COLOR)"
#  @echo "$(TEXT_COLOR) util-uuidgen                 : generate random uuid $(NO_COLOR)"
	
	@echo "$(OK_COLOR)------------------------------------------------------$(NO_COLOR)"

all: help

build-ubuntu:
	cd container-ubuntu && bash build.sh

build-perl:
	cd container-perl && bash build.sh

build-ddg-hack:
	cd container-ddg-hack && bash build.sh

build:	build-ubuntu build-perl build-ddg-hack
