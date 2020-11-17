# Matroskapp

## Introduction

The goal of this project is to get familiar with the concept of Erlang/Elixir applications and how they can be used instead of traditional microservices.
This repo is composed of two projects: the "frontend" and the "backend". 
The former is communicating with the latter with HTTP or it embeds the latter, depending on the branch you're on.

## Use

There are currently two branches: 
* https://github.com/bdusauso/matroskapp/tree/01-http-communication, showing the traditional microservice communication with HTTP
* https://github.com/bdusauso/matroskapp/tree/02-embedded-app, showing how to leverage Erlang apps.

First, be sure to start the database

```
docker-compose up -d
```

Then, set up both projects

```
$ cd frontend
$ mix setup
$ mix phx.server
```

```
$ cd backend/apps/event_store
$ mix setup
$ cd ../event_store_api
$ mix phx.server
```