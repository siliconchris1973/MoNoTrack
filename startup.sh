#!/bin/bash

ENVFILE=.environment.txt

echo "startup.sh working with environmwent from file ${ENVFILE}"

if [ -f "$ENVFILE" ] ; then
	source $ENVFILE
	
	#export SILICONCHRIS_INTERNAL_IP
	#export SILICONCHRIS_INTERNAL_PORT
	#export SILICONCHRIS_NOSQL_DB_HOST
	#export SILICONCHRIS_NOSQL_DB_PORT
	#export SILICONCHRIS_NOSQL_DB_SET
	#export SILICONCHRIS_NOSQL_DB_USERNAME 
	#export SILICONCHRIS_NOSQL_DB_PASSWORD
	
	node server.js
	exit 0
fi


echo "environment not set. Please make sure the file ${ENVFILE} exists ... aborting"
exit -1

