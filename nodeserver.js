var io = require('socket.io').listen(process.env.PORT || 3332);
var redis;

if(process.env.REDISTOGO_URL){
var rtg   = require("url").parse(process.env.REDISTOGO_URL);
redis = require("redis").createClient(rtg.port, rtg.hostname);
console.log("Redis client created");
redis.auth(rtg.auth.split(":")[1]); 

}else{
	redis = require("redis").createClient();
	console.log("redis created");
}

redis.subscribe('new post');

io.sockets.on('connection', function(socket){
	redis.on('message', function(channel, message){
		socket.emit('new post', message);
		console.log("Message sent");
	});
});

redis.on("error", function(err){
	console.log("ERROR: "+err.message);
});