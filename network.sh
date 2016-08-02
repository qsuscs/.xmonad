#!/bin/sh
nmcli -t -f name connection show --active | tr '\n' '|' | sed 's/|$//;s/|/ | /g'
