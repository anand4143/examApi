const allModel = require('../models');
const { QueryTypes:json} = require('sequelize');

function index( req, res ){

    allModel.Testquestion.findAll({
        attributes: ['id','testId', 'question','option1','option2','option3','option4','option5'],
        where: {
            testId: req.params.testId
        }
      })
    .then( (result) =>{
        res.status(200).json({
            questionOptions : result 
        })
    })
    .catch( (error) =>{
        res.status(500).json({
            message: "Something went wrong",
            error: error
        })
    })

}

function compareUserTest(req, res){
    allModel.Testquestion.findAll({
        attributes: [
            'id', 'answer'
        ],
        where:{
            testId: req.params.testId
        }
    })
    .then(
        (data) =>{
            res.status(200).json({
                questionOptions : data
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
module.exports = {
    index: index,
    compareUserTest
}