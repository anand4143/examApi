const allModel = require('../models');
const { QueryTypes, json } = require('sequelize');

 function index(req, res){
    
    allModel.Course.findAll({
        include:[{
                model: allModel.Gang,
                as: 'Batch'
            }]
    }).then( (result)=> {
        res.status(200).json({
            course: result
        });
    }).catch( (error) => {
        res.status(500).json({
            message: "Something went wrong",
            error: error
        });
    });

}

function particularCourseGangList( req, res ){
    allModel.Course.findAll({
        include: [{
            model: allModel.Gang,
            as: "Batch"
        }],
        where:{
            id: req.params.id
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
function save(req, res){
    const data = {
        courseName: req.body.courseName,
        courseDescription: req.body.courseDescription,
        status: 1
    }
    allModel.Course.create(data).then( (result)=> {
        res.status(201).json({
            message: "Course created succefully",
            course: result,
            test: data
        });
    }).catch( (error) => {
        res.status(500).json({
            message: "Something went wrong",
            error: error
        });
    });
}





function getAllUserCourses(req, res){
    allModel.User.findAll().then(
        (result) => {
            res.status(200).json({
                data: result
            });
        }
    )
    .catch( (e) => {
        res.status(500).json({
            err: e
        })
    })
    
}

module.exports = {
    index: index,
    save: save,
    getAllUserCourses:getAllUserCourses,
    courseGang: particularCourseGangList
}