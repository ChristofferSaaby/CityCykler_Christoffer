module.exports = (app) => {
    app.get('/admin',  ((req, res) => {
        res.render('pages/admin');
    }));
    app.post('/admin', function (req, res) {
        const message = '';
        var post = req.body;
        var mærke = post.fk_mærke;
        var model = post.model;
        var pris = post.pris
        var beskrivelse = post.beskrivelse;
        var kategori = post.fk_kategori;
        var billede = post.billede;

        if (mærke != "" && model != "" && pris != "" && beskrivelse != "" && kategori != "" && billede != "") {
            // event.preventDefault();

            var sql = `
            INSERT INTO produkter
            SET
            
            fk_mærke = ?,
            model =?,
            pris =?,
            beskrivelse =?, 
            fk_kategori =?, 
            billede = ?;`

            db.query(sql, [mærke, model, pris, beskrivelse, kategori, billede], function (err, result) {
                if (err) {
                    console.log("create error: " + err);
                }
                else {
                    var user = req.session.user;
                    message = "Dit produkt blev oprettet.";
                    res.render("pages/admin", { user: user, message: message, messageType: "alert-danger" });
                }
                
            });
        }
        else {
            var user = req.session.user;
            message = "Udfyld felterne";
            res.render('pages/admin', { user: user, message: message, messageType: "alert-danger" });
        }
    });
};