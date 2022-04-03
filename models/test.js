'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Test extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
    
  };
  Test.init({
    testId: {
      type: DataTypes.UUID,
      primaryKey: true,
      allowNull: false,
      autoIncrement: true,

    },
    courseId: DataTypes.INTEGER,
    bId: DataTypes.INTEGER,
    testName: DataTypes.STRING,
    testDescription: DataTypes.TEXT,
    status: DataTypes.ENUM('0', '1')
  }, {
    sequelize,
    modelName: 'Test',
  });
  return Test;
};