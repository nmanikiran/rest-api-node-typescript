
# REST API with Node using Typescript

This is a simple REST API developed using node and express with typescript

![alt text](https://image.ibb.co/nAd9OF/logos.png "Node Typescript")


## Requirements
[Node.js](https://nodejs.org/en/),  [postgresql](https://www.postgresql.org/download/)

## Setup DB
1) you need to install PostgreSQL  and then set the  following environment variable 
      `C:\Program Files\PostgreSQL\10\bin`,
      `C:\Program Files\PostgreSQL\10\lib`
2) in the db.ts file the DB connection string need to be updated accoring to `credentials`.
      ex : `postgres://<YourUserName>:<YourPassword>@localhost:5432/<YourDatabase>`

3) you can find the DB and other details under `server/db`
create database with the name `complete-typescript-course` and then run/ import the `.sql` files

## Setup

clone the repo then goto that directory and run following commands

 `npm install` 

 To transpile .ts files to .js run

 `npm run watch`

To start the Application

 `nodemon or npm start`

this will run on port 3000 you can change on config or

`node server.js -p <PORT>`



## Credits to
Angular University [complete-typescript-course](https://github.com/angular-university/complete-typescript-course)





