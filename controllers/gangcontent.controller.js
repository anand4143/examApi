const allModel = require('../models');
const {QueryTypes, json} = require('sequelize');

function index(req, res) {
    allModel.Gangcontent.findAll({
        where:{
            bId: req.params.gangId
        }
    })
    .then(
        (result) =>{
            res.status(200).json({
                data: result
            })
        }
    )
    .catch(
        (error) => {
            res.status(200).json({
                message: "Something went wrong1111",
                error: error
            })
        }
    )
}
module.exports = {
    allBatchContent: index
}