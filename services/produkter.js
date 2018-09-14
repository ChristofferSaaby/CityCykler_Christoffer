function getAllProdukter() {
    return new Promise((resolve, reject) => {
      var sql = `SELECT
      produkter.id
      produkter.billede,
      produkter.fk_mærke,
      produkter.model,
      produkter.beskrivelse,
      produkter.pris,
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

module.exports = {
    getAllProdukter,
 }