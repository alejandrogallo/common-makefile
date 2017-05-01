MAKEFILE_VERSION = syscmd(`git describe --tags')dnl
MAKEFILE_DATE = syscmd(`date +"%d-%m-%Y %H:%M"')dnl
AUTHOR ?= _MAKEFILE_AUTHOR
URL ?= _MAKEFILE_URL
LICENSE ?= GPLv3
