var server = require("./services/rest-server.js");
var config = require("./config/config.js");
var data = require("./data/moviedb.js");

var router = require("./services/router.js");
var controller = require('./controllers/movieController.js');

var dataSource = data.open(config);
var movieController = controller(dataSource);
var movieRouter = router(movieController);

server.start(config, movieRouter);
