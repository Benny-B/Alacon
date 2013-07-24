var io = require('socket.io').listen(3332);


io.sockets.on('connection', function(socket){
	socket.emit('new post', {name:'ben',post:'This application uses socket.io'});
});