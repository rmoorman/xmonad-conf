#!/bin/sh

office_bin=$(ls /usr/local/bin/openoffice* /usr/bin/openoffice* 2> /dev/null | sort | head -n 1)
if [ ! -x "$office_bin" ]; then
	office_bin=$(ls /usr/local/bin/libreoffice* /usr/bin/libreoffice* 2> /dev/null | sort | head -n 1)
fi

exec $office_bin $@
