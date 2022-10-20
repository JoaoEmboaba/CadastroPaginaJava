const { Socket } = require("dgram");
const express = require("express");
const path = require("path");
const app = express();

const server = require("http").createServer(app);
const io = require("socket.io")(server);

app.use(express.static(path.join(__dirname, "public")));
app.set("views", path.join(__dirname, "public"));
app.engine("html", require("ejs").renderFile); // Usado para renderizar um arquivo .html
app.set("view engine", "html");

app.use("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

let messages = [];

io.on("connection", (socket) => {
  console.log("Um usuário se conectou: \nID: ", socket.id);

  socket.emit('previousMessages', messages);

  socket.on('sendMessage', (data) => {
    messages.push(data);
    socket.broadcast.emit('receivedMessage', data);
  });
});

/*socket.on("chat message", (msg) => {
  socket.on("Nome", (nome) => {
    console.log(nome + ": " + msg);
  });
});*/

server.listen(3000, () => {
  console.log("Servidor conectado na porta 3000");
});
