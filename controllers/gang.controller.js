const model = require('../models');

function getGangsList(req, res){
    model.Gang.findAll({
        order: [['id', 'DESC']]
    })
    .then(
        (result)=> {
            res.status(200).json({
                getGangsList: result
            });
        })
    .catch((error) => {
        res.status(500).json({
            message: "Something went wrong",
            error: error
        });
    })
}

module.exports = {
    getGangsList: getGangsList
}