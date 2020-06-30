#!/bin/bash

base='docker-compose run --rm web'
baseRails=$base' rails'

function cmd-rails() {
    echo 'rails' $*
    exec ${baseRails} $*
}

function cmd-base() {
    echo $*
    exec ${base} $*
}

function help() {
  echo "######################################"
  echo "#     Back end - The Bash Helper     #"
  echo "######################################"
  echo 
  echo "Usage: ./sh <action> [arguments...]"
  echo 
  echo "Where <action> is one of:"
  echo "    sandbox"
  echo "    migrate"
  echo 
}

action=${1:-"help"}
echo 'action: '$action
echo

case "$action" in
    help)
        help
        ;;
    sandbox)
        cmd-rails console --sandbox
        ;;
    migrate)
        cmd-rails db:migrate
        ;;
    *)
        cmd-base $*
        ;;
esac