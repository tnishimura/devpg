# devpg

Launch a temporary, development instance of Postgresql on demand

## Introduction

`devpg` is a small script which:
* automates the process of launching a PostgreSQL Docker container
* initializes the database with an optional SQL file
* opens a `psql` session and handles 
* handles cleanup of the container 

## Prerequisites

This Bash requires you have Docker installed and preconfigured (you should be in the `docker` group, for example). 
It also requires you have the PostgreSQL client tool (`psql`) installed. 

## Installation

To install, simply place the `devpg` script somewhere in your `$PATH`.

## Usage

    Usage:
        devpg [OPTION]...

    Options:
        -h, --help
        -i, --init-script=FILENAME   initialize the database with some sql
        -p, --port=INT               local port (default: 15432)
        -P, --password=STRING        database password (default: password)
        -t, --tmp-directory=DIRNAME  temporary directory (default: /tmp/devpg-$PID)

At its most basic, running `devpg` without any arguments will create an instance of PostgreSQL and opens a `psql` session to the instance for you.
You can also connect to the instance from any application on localhost with the port and password specified. 

Additionally, you can provide an SQL initialization script using `-i`. 
You can place DDL statements (`create table`, etc) and sample data (using `insert`) in this file to quickly test your application against your schema. 
A small sample database `sample.sql` is included to show its functionality.
