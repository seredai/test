
#!/bin/bash
#export CNROMS_SRC = / home / sereda / test / app2 / pages /  # Путь синхронизации, пожалуйста, измените в соответствии с реальной ситуацией
CDIR=$(pwd)

inotifywait --exclude '\.(part|swp)' -r -mq -e  modify,move_self,create,delete,move,close_write $CDIR/pages/  |
  while read event;
    do
         docker-compose up  --build

  done 
