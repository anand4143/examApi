'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Usercoursegang extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Usercoursegang.init({
    userId: DataTypes.INTEGER,
    courseId: DataTypes.INTEGER,
    gangId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Usercoursegang',
  });
  return Usercoursegang;
};