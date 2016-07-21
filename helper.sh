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
	"mute")
		pactl set-sink-mute @DEFAULT_SINK@ toggle
		;;
	"volup")
		pactl set-sink-volume @DEFAULT_SINK@ '+5%'
		;;
	"voldown")
		pactl set-sink-volume @DEFAULT_SINK@ '-5%'
		;;
	"micmute")
		pactl set-source-mute @DEFAULT_SOURCE@ toggle
		;;
	*)
		exit 1
esac