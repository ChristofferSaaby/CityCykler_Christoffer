function getAllProdukterByKategori(id) {
    return new Promise((resolve, reject) => {
        var sql = `SELECT * FROM produkter
        INNER JOIN kategori
        ON kategori.id = produkter.fk_kategori
        INNER JOIN mærke
        ON mærke.id = produkter.fk_mærke
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
        var sql = `SELECT
                    kategori.id,
                    kategori.kategori    
                from kategori`;
   

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
        var sql = `SELECT 
                    mærke.id,
                    mærke.mærke
                from mærke`;
   

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

function getLimitProducts(page) {
    return new Promise((resolve, reject) => {
        var sql = `SELECT
        produkter.id,
        produkter.billede,
        produkter.fk_mærke,
        produkter.model,
        produkter.beskrivelse,
        produkter.pris,
        
        FROM produkter
        INNER JOIN mærke
        ON mærke.id=produkter.fk_mærke
        LIMIT = ?
        OFFSET = ?`;
   

    db.query(sql, [page], function (err, results) {
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
    getLimitProducts
 }