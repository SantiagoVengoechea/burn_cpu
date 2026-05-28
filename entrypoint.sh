#!/bin/bash
/cpu_load.sh &
nginx -g "daemon off;"
