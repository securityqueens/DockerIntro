#!/bin/sh

service apache2 start

#Any output from the command line is sent into this blackhole
tail -f /dev/null
