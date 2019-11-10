import { Model, DataTypes } from 'sequelize';
import { sequelize } from './../db/db';
import { Lesson } from './Lesson';

export class Course extends Model {
  public id!: number;
  public description: string;
  public url: string;
  public longDescription: string;
  public iconUrl: string;
  public courseListIcon: string;
  public seqNo: number;
  public comingSoon: boolean;
  public isNew: boolean;
  public isOngoing: boolean;
}

Course.init(
  {
    id: { type: DataTypes.INTEGER, primaryKey: true },
    description: { type: DataTypes.STRING },
    url: DataTypes.STRING,
    longDescription: DataTypes.TEXT,
    iconUrl: DataTypes.STRING,
    courseListIcon: DataTypes.STRING,
    seqNo: DataTypes.INTEGER,
    comingSoon: DataTypes.BOOLEAN,
    isNew: DataTypes.BOOLEAN,
    isOngoing: DataTypes.BOOLEAN,
  },
  {
    sequelize,
    tableName: 'Courses',
  },
);

Course.hasMany(Lesson, { foreignKey: 'courseId' });
Lesson.belongsTo(Course, { foreignKey: 'courseId' });
