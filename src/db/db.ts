import { Sequelize, Options } from 'sequelize';
const dbUrl: string = process.env.DB_URL || '';
const nodeEnv: string = process.env.NODE_ENV || '';

if (!dbUrl) {
  console.log('Please create .env file, refer .env.sample');
  process.exit(0);
}

let optionsObj: object = { benchmark: true, logging: console.log };

if (nodeEnv && nodeEnv === 'production') {
  optionsObj = { logging: false };
}
const options: Options = optionsObj;

export const sequelize: Sequelize = new Sequelize(dbUrl, options);

sequelize
  .authenticate()
  .then(() => {
    console.log('Connection has been established successfully..');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
  });
