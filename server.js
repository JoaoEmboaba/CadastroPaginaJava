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
  console.log("Um usuário se conectou");

  socket.on("chat message", (msg) => {
    socket.on("Nome", (nome) => {
      socket.broadcast.emit(nome, msg);
      io.emit(nome, msg);
      console.log(nome + ": " + msg);
    });
  });

  socket.on("mensagem", (data) => {
    messages.push(data);
    socket.broadcast.emit("mensagemRecebida", data);
  });
});

server.listen(3000, () => {
  console.log("Servidor conectado na porta 3000");
});
