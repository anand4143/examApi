const allModel = require('../models');
// const {QueryType: json} = require('sequelize');
const {QueryTypes, json} = require('sequelize');





function index( req, res ){
    allModel.Test.findAll({
        where:{
            bId: req.params.bId
        }
    }).then( (result) =>{
        res.status(200).json({
            data: result
        })
    })
    .catch((error) =>{
        res.status(500).json({
            message: "Something went wrong",
            error: error
        })
    })
}

module.exports = {
    testList: index
}
