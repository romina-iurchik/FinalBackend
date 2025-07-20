const controller = {};


controller.index= 
(req, res) => {
    res.send("Bienvenido desde controllers");
}


module.exports = controller;
