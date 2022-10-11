const express = require('express'); //Usado para identificar o arquivo como estatico (uma rota)
const path = require('path'); // Comando padrão node

const app = express();
const server = require('http').createServer(app);
const io = require('socket.io')(server);

app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'public'));
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');

app.use('/', (req, res) => {

        res.render('FAQ.html');
    });

server.listen(3000);
