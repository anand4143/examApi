'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Gangcontent extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Gangcontent.init({
    bId: DataTypes.INTEGER,
    fileOriginalName: DataTypes.STRING,
    savingFileName: DataTypes.STRING,
    fileExtension: DataTypes.STRING,
    filePath: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Gangcontent',
  });
  return Gangcontent;
};