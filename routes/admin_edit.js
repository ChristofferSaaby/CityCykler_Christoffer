const crud = require('../services/crud.js');
module.exports = (app) => {

    app.post('/admin/product/adit', async function (req, res) {

            updateOneProduct = await crud.updateOneProduct();
            res.send(err);
        })
    };