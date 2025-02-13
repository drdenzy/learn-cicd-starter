#!/bin/bash

if [ -f .env ]; then
    source .env
fi

ls -alh sql
cd sql/schema
goose turso "$DATABASE_URL" up
