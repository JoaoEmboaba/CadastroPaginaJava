const express = require('express'); //Chama as dependências do express
const path = require('path'); // Chama comandos padrões do node

const app = express(); //Instância o express como função
const server = require('http').createServer(app); //Estabelece uma conxeão http
const io = require('socket.io')(server); //Estabelece uma conexão wss

app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'public'));
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');

app.use('/', (req, res) => {
    res.render('index.html');
});

io.on('connection', socket =>{
    console.log('Socket conectado: ${socket.id}'); //Comandos usados para a identificar cada socket que entra no chat

    socket.on('sendMessage', data => {
        console.log(data); 
    })
});

server.listen(3000); //Define a porta que iremos utilizar
