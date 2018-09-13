function getAllProdukter() {
    return new Promise((resolve, reject) => {
      var sql = `SELECT
      produkter.billede,
      produkter.fk_mærke,
      produkter.model,
      produkter.beskrivelse,
      produkter.pris,
      mærke.mærke
      FROM produkter
      INNER JOIN mærke
      ON mærke.id=produkter.fk_mærke`;
 
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
 }
 
 function getForsideText() {
     return new Promise((resolve, reject) =>{
         var sql = `SELECT * FROM text
         WHERE fk_text_kategori = 1`

         db.query(sql, function (err, results){
             if (err) {
                 console.log(err);
             } else {
                 resolve(results);
             }
         });
     });
 }

 
 module.exports = {
    getAllProdukter,
    getForsideText,
 }