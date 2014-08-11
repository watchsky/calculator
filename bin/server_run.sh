#! /bin/bash

UNICORN=/home/xiangwu/.rvm/gems/ruby-2.1.2/bin/unicorn_rails
CONFIG_FILE=/home/xiangwu/Project/calculator/config/unicorn.rb
APP_HOME=/home/xiangwu/Project/calculator

case "$1" in
  start)
  $UNICORN -c $CONFIG_FILE -E development -D
  ;;
  stop)
  kill -QUIT `cat /home/xiangwu/Project/calculator/tmp/unicorn_padrino.pid`
  ;;
  restart|force-reload)
  kill -USR2 'cat /home/xiangwu/Project/calculator/tmp/unicorn_padrino.pid'
  ;;
esac
