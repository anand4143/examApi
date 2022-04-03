const jwtConfig = require('./jwt-config');
const JWT = require('jsonwebtoken');

let checkToken = (req, res, next)=>{
    let userToken = req.headers['authorization'];
    if(userToken){
        // token value
        JWT.verify(userToken, jwtConfig.secret, { algorithms: jwtConfig.algorithm}, (error, data) =>{
            if(error){
                res.status(500).json({
                    status: 0,
                    data: error,
                    message: "Token is not valid"
                })
            }else{
                req.user = data;
                next();
            }
        });
    }else{
        return res.status(500).json({
            status: 0,
            message: "Please provide authentication token value"
        })
    }
}

module.exports = {
    checkToken: checkToken
}