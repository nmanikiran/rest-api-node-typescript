import { Application } from 'express';
import * as bodyParser from 'body-parser';
import * as morgan from 'morgan';
import * as fs from 'fs';
import { WriteStream } from 'fs';
import * as path from 'path';
import * as helmet from 'helmet';
import * as rateLimit from 'express-rate-limit';
import * as winston from 'winston';

import { unCoughtErrorHandler } from './handlers/errorHandler';
import Routes from './routes';

// app.enable('trust proxy'); // only if you're behind a reverse proxy (Heroku, Bluemix, AWS ELB, Nginx, etc)

const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 100, // limit each IP to 100 requests per windowMs
  deplayMs: 0, // disables delays
});

export default class Server {
  constructor(app: Application) {
    this.config(app);
    new Routes(app);
  }

  public config(app: Application): void {
    const accessLogStream: WriteStream = fs.createWriteStream(
      path.join(__dirname, './logs/access.log'),
      { flags: 'a' },
    );
    app.use(morgan('combined', { stream: accessLogStream }));
    app.use(bodyParser.urlencoded({ extended: true }));
    app.use(bodyParser.json());
    app.use(helmet());
    app.use(limiter); //  apply to all requests
    app.use(unCoughtErrorHandler);
  }
}

process.on('beforeExit', function(err) {
  winston.error(JSON.stringify(err));
  console.error(err);
});
