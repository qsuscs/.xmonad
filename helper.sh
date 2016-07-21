#!/bin/sh

lock() {
	i3lock -c aa00aa
}

hybrid_sleep() {
	systemctl hybrid-sleep
}

case "$1" in
	"lock")
		lock
		;;
	"lock-hybrid-sleep")
		lock && hybrid_sleep
		;;
	*)
		exit 1
esac
