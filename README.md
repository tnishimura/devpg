# devpg

Launch a temporary, development instance of PostgreSQL on demand. 

## Introduction

`devpg` is a small script which:
* creates a new PostgreSQL database directory with init
* start a new PostgreSQL server instance 
* initializes the database with optional SQL scripts
* opens a `psql` session and handles 
* handles cleanup of the container 

It is meant to simplify your backend development workflow by eliminating the need to manage a PostgreSQL server or its config files, users, permissions, etc.

## Prerequisites

`devpg` requires you have installed the PostgreSQL server and client packages for your installation.

## Installation

To install, simply place the `devpg` script somewhere in your `$PATH`.

## Usage

    Usage:
        devpg [OPTION]...

    Options:
        -h, --help
        -x, --pg-executable-dir=DIR  postgres executable dir like /usr/lib/postgres/12
        -i, --init-script=FILENAME   initialize the database with some sql
                                     (may be repeated)
        -p, --port=INT               local port (default: 15432)
        -t, --tmp-directory=DIRNAME  temporary directory (default: /tmp/devpg-$PID)

At its most basic, running `devpg` without any arguments will create an instance of PostgreSQL and opens a `psql` session to the instance for you.
You can also connect to the instance from any application on localhost with the connection string specified.
User and database name will be the same as your Unix username (the value of `$USER`). 

Additionally, you can provide an SQL initialization script using `-i`. 
You can place DDL statements (`create table`, etc) and sample data (using `insert`) in this file to quickly test your application against your schema. 
A small sample database `sample/schema.sql` is included to show its functionality.

You can also specify multiple init scripts with `-i` so that you can split the schema and sample data. Init scripts will be applied in the order specified.

## Example

Let's say you have a schema in `sample/schema.sql`:

    create table your_awesome_table (first_name text, last_name text);

And some sample data in `sample/data.sql`:

    insert into your_awesome_table (first_name, last_name) 
    values ('Ada', 'Lovelace'), ('Charles', 'Babbage');

You can them run this script as:

    devpg -i sample/schema.sql -i sample/data.sql 

This will automatically launch an instance of postgres in a container and open a psql session. You'll also be able to connect to the instance with any other client (for example, your application server on localhost with the port and password specified.)

# License

MIT
