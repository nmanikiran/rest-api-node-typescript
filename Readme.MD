# REST API with Node using Typescript

This is a simple REST API developed using node and express with typescript

![alt text](https://image.ibb.co/nAd9OF/logos.png "Node Typescript")

## ❤️ Found this project useful?

If you found this project useful, then please consider giving it a ⭐️ on Github and sharing it with your friends via social media.

## Requirements

[Node.js](https://nodejs.org/en/), [postgresql](https://www.postgresql.org/download/)

## Setup DB

1. you need to install PostgreSQL and then set the following environment variable
   `C:\Program Files\PostgreSQL\10\bin`,
   `C:\Program Files\PostgreSQL\10\lib`
2. rename `.env-sample` to `.env` in the file the DB connection string need to be updated accoring to your `credentials`.
   ex : `postgres://<YourUserName>:<YourPassword>@localhost:5432/<YourDatabase>`

3. you can find the DB and other details under `src/db`
   create database with the name `complete-typescript-course` and then run/ import the `.sql` files
   Or you can run `npm run seed`.

## Run the app locally

- git clone https://github.com/nmanikiran/rest-api-node-typescript.git

- `npm install`
- `npm start` - This will start the Application and run on port 3000
- `npm run dev` - This will start the Application in development mode

you can change port in `.env` file check `.env-sample`

## Features

- CURD operations for Cources
- CURD operations for Lessons
- REST API Request object validations - Basic
- Error Logs
- Seeder for DB

## Planned

- JWT login
- Postman collections
- Improve request Object Validations
- Improve Error Messages for request failures
- Project / DB Setup in Ubuntu - Docs
- Security
- Hosting

## Contributing

Awesome! Contributions of all kinds are greatly appreciated. To help smoothen the process we have a few non-exhaustive guidelines to follow which should get you going in no time.

## Using GitHub Issues

- Feel free to use GitHub issues for questions, bug reports, and feature requests
- Use the search feature to check for an existing issue Include as much information as possible and provide any relevant resources (Eg. screenshots)
- A pull request with a breaking test would be super preferable here but isn't required

## Submitting a Pull Requests

I welcome and encourage all pull requests. It usually will take me within 24-48 hours to respond to any issue or request. Here are some basic rules to follow to ensure timely addition of your request:

- Match the document style as closely as possible.
- Please keep PR titles easy to read and descriptive of changes, this will make them easier to merge :)
- Pull requests must be made against `development` branch for this particular repository.
- Check for existing [issues](https://github.com/nmanikiran/rest-api-node-typescript/issues) first, before filing an issue.
- Make sure you follow the set standard as all other projects in this repo
- Have fun!

## Created & Maintained By

[@nmanikiran](https://github.com/nmanikiran) | [@curioustushar](https://github.com/curioustushar)

Feel free to reach out to me through @nmanikiran if you have any questions or feedback!

## Recommended / Preferred

[VSCode](https://code.visualstudio.com/download)

## Thanks & Credits to

- Envato Tuts+ [30 Days to Learn HTML & CSS (Full Course)](https://www.youtube.com/playlist?list=PLgGbWId6zgaWZkPFI4Sc9QXDmmOWa1v5F)
- Wes Bos [JavaScript30](https://www.youtube.com/playlist?list=PLu8EoSxDXHP6CGK4YVJhL_VWetA865GOH)
- CodeWorkr [REST API with Node (Express & MongoDB)](https://www.youtube.com/playlist?list=PLSpJkDDmpFZ5rZ5-Aur9WRNsBDSUS-0B9)
- Tyler McGinnis [Advanced JavaScript](https://www.youtube.com/playlist?list=PLqrUy7kON1meuCvGp2D6yTglZhPTT_s_f)
