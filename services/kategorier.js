function getAllProdukterByKategori(id) {
    return new Promise((resolve, reject) => {
        var sql = `SELECT * FROM produkter
        INNER JOIN kategori
        ON kategori.id=produkter.fk_kategori
        INNER JOIN mærke
        ON mærke.id=produkter.fk_mærke
        WHERE fk_kategori = ?`
 
      db.query(sql, [id], function (err, results) {
              if (err) {
                  console.log(err);
                  reject(err);
              } else {
                  resolve(results);
              }
          });
    });
 };

 function getKategorier() {
    return new Promise((resolve, reject) => {
        var sql = `SELECT * from kategori`;
   

    db.query(sql, function (err, results) {
        if (err) {
            console.log(err);
            reject(err);
        } else {
            resolve(results);
        }
        });
    });
}

function getMærker() {
    return new Promise((resolve, reject) => {
        var sql = `SELECT * from mærke`;
   

    db.query(sql, function (err, results) {
        if (err) {
            console.log(err);
            reject(err);
        } else {
            resolve(results);
        }
        });
    });
}

 module.exports = {
    getAllProdukterByKategori,
    getKategorier,
    getMærker,
 }