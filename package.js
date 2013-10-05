Package.describe({
	summary: 'EJSON support for Moment'
});

Package.on_use(function (api, where) {
	where = where || ['client', 'server']

	api.use([
		'coffeescript',
		'moment',
		'ejson',
	], where);

	api.add_files('moment-ejson.coffee', where);
});
