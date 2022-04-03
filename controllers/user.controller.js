const models = require('../models');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const jwtConfig = require('../config/jwt-config');

function signup(req, res){

    models.User.findOne({where: { email:req.body.email }})
    .then(
        (result) =>{
            if(result){
                res.status(409).json({
                    message: "Email already exists!"
                })
            }else{
                bcrypt.genSalt(10, (err, salt) => {
                    bcrypt.hash(req.body.password, salt, (err, hash) =>{
                        const user = {
                                firstName:  req.body.firstName,
                                lastName:   req.body.lastName,
                                username:   req.body.username,
                                password:   hash,
                                email:      req.body.email,
                                phoneno:    req.body.phoneno,
                                permission_id: 1
                        }
                        models.User.create(user)
                        .then((data) => {
                            if(data){
                                const userCourse = {
                                   courseId: req.body.courses,
                                    userId: data.id,
                                    gangId:req.body.gangs
                                }
                                models.Usercoursegang.create(userCourse)
                                .then(
                                    (userCourse) => {
                                        if(userCourse){
                                            res.status(201).json({
                                                message: "User created successfully!",
                                                userCourse: userCourse,
                                                user: data
                                                
                                            })
                                        }else{
                                            res.status(401).json({
                                                message: "User course mapping have error!"
                                            })
                                        }
                                        
                                    }
                                )
                                .catch();
                               
                            }
                               
                        }).catch(
                            (error) => {
                                res.status(500).json({
                                    message: "Some things went wrong!"
                                })
                            }
                        )
                    })
                })
            }
        }
    )    
    .catch( (error) => {
        res.status(500).json({
            message: "Some things went wrong!"
        })
    })
}

function login(req, res){
    models.User.findOne({where: {email:req.body.email}})
    .then(
        (user) => {
            if(user === null) {
                res.status(401).json({
                    message: "Invalid credential"
                })
            }else{
                bcrypt.compare(req.body.password, user.password, (err, result)=>{
                    if(result){
                        const token = jwt.sign({email: user.email,userId: user.id }, jwtConfig.secret, (err, token)=>{
                            userObj = {
                                firstName: user.firstName,
                                lastName: user.lastName,
                                email: user.email,
                                phoneno: user.phoneno,
                                userId: user.id
                            }
                            res.status(200).send({
                                message: "Authentication successful!",
                                token: token,
                                user: userObj
                            })
                        })
                    }
                    else{
                        res.status(401).json({
                            message: "Invalid password"
                        })
                    }
                })
            }

        }
    )
    .catch(
        (error)=> {
            res.status(500).json({
                message: "Something went wrong!"
            });
        }
    )
}

module.exports = {
    signup: signup,
    login: login
}