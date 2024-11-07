#!/bin/bash

if [ "$2" = "+" ]; then
  echo $(($1 + $3))
elif [ "$2" = "-" ]; then
  echo $(($1 - $3))
else
  echo "지원하지 않는 연산자입니다. + 또는 -만 사용할 수 있습니다."
fi

