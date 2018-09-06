module.exports = function (app) {
	app.get('/login',  ((req, res) => {
		res.render('pages/login');
	}));
    app.post('/login', function (req, res) {
		var message = '';
		var sess = req.session;

		var post = req.body;
		var name = post.username;
		var pass = post.password;

		var sql =`
			SELECT
				id,
				username
			FROM user
			WHERE
				username = ? AND password = ?
		`;

		db.query(sql, [name, pass], function (err, results) {
			if (results.length) {
				req.session.id = results[0].id;
				req.session.user = results[0];
				// console.log(results[0].id);
				res.redirect('/admin');
			}
			else {
				message = 'Forkert brugernavn eller Password.';
				res.render('pages/login', { message: message });
			}
		});
    });
};