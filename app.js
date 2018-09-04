var express = require('express');
var app = express();
const port = 3000
const path = require('path');

require("./config/sql");

app.use(express.static(path.join(__dirname, 'public')));


app.set('view engine', 'ejs');
app.set('port', port);
app.set('views', __dirname + '/views');


require('./routes/overview')(app);

app.listen(port);
console.log(`port ${port} is now live on http://localhost:${port}`);