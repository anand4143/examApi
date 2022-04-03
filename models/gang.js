'use strict';
const {
  Model
} = require('sequelize');
const course = require('./course');
module.exports = (sequelize, DataTypes) => {
  class Gang extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  
  Gang.init({
    courseId: DataTypes.INTEGER,
    bName: DataTypes.STRING,
    bDescription: DataTypes.TEXT,
    status: DataTypes.ENUM('0', '1')
  }, {
    sequelize,
    modelName: 'Gang',
  });
  return Gang;
};