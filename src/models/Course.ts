import { Model, DataTypes } from 'sequelize';
import { sequelize } from './../db/db';
import { Lesson } from './Lesson';

export class Course extends Model {
  public id!: number;
  public description!: string;
  public url!: string;
  public longDescription!: string;
  public iconUrl!: string;
  public tags!: string;
  public channelTitle!: string;
  public channelUrl!: string;
  public channelId!: string;
  public seqNo!: number;
}

Course.init(
  {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    description: { type: DataTypes.STRING },
    url: { type: DataTypes.STRING },
    longDescription: { type: DataTypes.TEXT },
    iconUrl: { type: DataTypes.STRING },
    tags: { type: DataTypes.STRING },
    channelTitle: { type: DataTypes.STRING },
    channelUrl: { type: DataTypes.STRING },
    channelId: { type: DataTypes.STRING },
    seqNo: { type: DataTypes.INTEGER },
  },
  {
    sequelize,
    tableName: 'Courses',
  },
);

Course.hasMany(Lesson, { foreignKey: 'courseId', as: 'lessons' });
Lesson.belongsTo(Course, { foreignKey: 'courseId', as: 'course' });
