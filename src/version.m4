ifdef(`__version_common_makefile__',,`define(`__version_common_makefile__',1)dnl
`#' File: __file__
MAKEFILE_VERSION = syscmd(`git describe --tags')dnl
MAKEFILE_DATE = syscmd(`date +"%d-%m-%Y %H:%M"')dnl
MAKEFILE_AUTHOR = _MAKEFILE_AUTHOR
MAKEFILE_URL = _MAKEFILE_URL
MAKEFILE_LICENSE = GPLv3
')dnl
