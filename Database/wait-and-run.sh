#!/bin/bash

Wait for PostgreSQL to be ready
echo "Waiting for SQL Server to be ready..."
for i in {i..50};
do
    psql -h database -U postgres -c "SELECT 1" > /dev/null 2>&1
    if [ $? -eq 0 ]
    then
        echo "PostgreSQL is ready."
        break
    else
        echo "Not ready yet..."
        sleep 1
    fi
done

# Run the SQL Script
psql -h database -U postgres -d postgres -f /CreateDatabaseAndSeed.sql
