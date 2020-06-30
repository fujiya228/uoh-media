#!/bin/bash

base_run='docker-compose run --rm web'
base_rails=$base_run' rails'
base_exec='docker-compose exec web /bin/bash'

function cmd-rails() {
    echo 'rails' $*
    exec ${base_rails} $*
}

function cmd-run() {
    echo $*
    exec ${base_run} $*
}

function cmd-exec() {
    echo $*
    exec ${base_exec} $*
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
  echo "    rails"
  echo "    run"
  echo "    exec"
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
    rails)
        cmd-run $*
        ;;
    run)
        cmd-run $*
        ;;
    exec)
        cmd-exec
        ;;
    *)
        cmd-rails $*
        ;;
esac