function getAll() {
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
 
 function getAllByKategori(id) {
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
 

 
 module.exports = {
    getAll,
    getAllByKategori,
    // createOne,
    // updateOne,
    // deleteOne,
    // getOneProductByProduct,
 }