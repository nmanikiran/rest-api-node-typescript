import { Sequelize, Options } from 'sequelize';
const dbUrl: string = process.env.DB_URL;
const options: Options = { benchmark: true, logging: console.log };
export const sequelize: Sequelize = new Sequelize(dbUrl, options);

sequelize
  .authenticate()
  .then(() => {
    console.log('Connection has been established successfully..');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
  });
