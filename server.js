const { Console } = require('console');
const path = require('path');
const express = require('express');
const app = express();
const server = require('http').createServer(app);
const io = require('socket.io')(server);


app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'public'));
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');

server.listen(3000, function(){

    console.log('Conexão feita na porta 3000');
    
});

app.get('/', (req, res) =>{

    res.sendFile(__dirname+'/index.html');
});

io.on('connection', (socket) =>{

    console.log('Nova conexão ', socket.id);

});