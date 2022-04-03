'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Gangcontents', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      bId: {
        type: Sequelize.INTEGER
      },
      fileOriginalName: {
        type: Sequelize.STRING
      },
      savingFileName: {
        type: Sequelize.STRING
      },
      fileExtension: {
        type: Sequelize.STRING
      },
      filePath: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Gangcontents');
  }
};