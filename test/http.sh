#!/bin/bash

IS_HOST=${IS_HOST:-localhost}
MAX_RETRIES=${MAX_RETRIES:-10}

http_ok=200
failed=false

retries=0
is_response=`curl -k -s -L -w %{http_code} -o /dev/null https://${IS_HOST}:9443/carbon`
until [ ${is_response} != "000" ] || [ ${retries} -eq ${MAX_RETRIES} ]; do
  echo "Waiting for Admin Console at https://${IS_HOST}:9443/carbon to be ready...Retries ${retries}"
  sleep 5
  retries=$((retries + 1))
  is_response=`curl -k -s -L -w %{http_code} -o /dev/null https://${IS_HOST}:9443/carbon`
done

if [ ${is_response} != ${http_ok} ];
then
  echo -e "\033[0;31mAdmin Console is unreachable. Received HTTP response ${is_response}. To view the Identity Server container logs, run the \"docker logs\" command.\033[0m"
  failed=true
fi

if ${failed} ;
then
  echo -e "\033[0;31mTest failed.\033[0m"
  exit 1
fi
echo -e "\033[0;32mTest passed.\033[0m"
