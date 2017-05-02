#!/bin/bash
function waited_kill() {
   pid=`getPid`
   [ -z "$pid" ] && echo "No Process To Kill" && exit 0
   echo Killing $pid
   while [ -n "$pid" ]; do
      kill $pid
      sleep 1
      echo -n '.'
      pid=`getPid`
   done
   echo Kill $pid Success
}
