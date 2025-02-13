#!/bin/bash

if [ -f .env ]; then
    source .env
fi

ls -alh sql/schema
cd sql/schema
goose turso $DATABASE_URL up
