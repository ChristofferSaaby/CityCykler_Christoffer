function getForsideText() {
    return new Promise((resolve, reject) =>{
        var sql = `SELECT * FROM text
        WHERE fk_text_kategori = 1`

        db.query(sql, function (err, results){
            if (err) {
                console.log(err);
                reject(err)
            } else {
                resolve(results);
            }
        });
    });
}

module.exports = {
    getForsideText,
 }