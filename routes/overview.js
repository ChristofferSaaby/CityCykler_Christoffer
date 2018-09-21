module.exports = function (app) {
    require('./home')(app);
    require('./cykle_kategori')(app);
    require('./udstyr_kategori')(app);
    require('./login')(app);
    require('./admin')(app);
    require('./admin_add')(app);
    require('./admin_edit')(app);
    require('./cykler')(app);
    require('./udstyr')(app);
    
    
    
};