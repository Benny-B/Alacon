var io = require('socket.io').listen(3332);
var redis = require("redis").createClient();

redis.subscribe('new post');

io.sockets.on('connection', function(socket){
	redis.on('message', function(channel, message){
		socket.emit('new post', message);
	});
});

redis.on("error", function(err){
	console.log("ERROR: "+err.message);
});