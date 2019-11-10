import { sequelize } from './../db/db';
import { Model, DataTypes } from 'sequelize';

export class Lesson extends Model {
  public id!: number;
  public url: string;
  public description: string;
  public duration: string;
  public seqNo: number;
  public courseId: number;
  public pro: boolean;
  public tags: string;
  public gitHubUrl: string;
}

Lesson.init(
  {
    id: { type: DataTypes.INTEGER, primaryKey: true },
    url: DataTypes.STRING,
    description: DataTypes.STRING,
    duration: DataTypes.STRING,
    seqNo: DataTypes.INTEGER,
    courseId: DataTypes.INTEGER,
    pro: DataTypes.BOOLEAN,
    tags: DataTypes.STRING,
    gitHubUrl: DataTypes.STRING,
  },
  {
    sequelize,
    tableName: 'Lessons',
  },
);
