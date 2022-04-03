const allModel = require('../models');
const { QueryTypes, json } = require('sequelize');

function save(req, res){
    const  data = {
        name: req.body.name,
        email: req.body.email,
        phoneno: req.body.phoneno,
        message: req.body.message
    }

    allModel.Contactus.create(data)
    .then(
        (result) =>{
            res.status(200).json({
                message: "Contact information saved successfully",
                data: result
            })
        }
    )
    .catch(
        (error)=>{
            res.status(500).json({
                message: "Something went wrong",
                error: error
            })
        }
    )
}

module.exports =  {
    save: save
}