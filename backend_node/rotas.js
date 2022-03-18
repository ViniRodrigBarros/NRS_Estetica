
const express = require("express");
const req = require("express/lib/request");
const app = express();

app.get("/",function(req,res){
    res.send("ROTA PRIMARIA")
});

app.get("/getCustomers",function(req,res){
    res.send("getCustomers")
});

app.get("/getSocios",function(req,res){
    res.send("getSocios")
});

app.get("/getAgendamentos",function(req,res){
    res.send("getAgendamentos")
});

app.get("/getAgendamentosPorSocio",function(req,res){
    res.send("getAgendamentos por socio")
});

app.get("/cadastrarAgendamento",function(req,res){
    res.send("cadastrarAgendamento")
});

app.get("/atualizarAgendamento",function(req,res){
    res.send("atualizarAgendamento")
});

app.get("/cadastrarSocio",function(req,res){
    res.send("cadastrarSocio")
});

app.get("/cadastrarCliente",function(req,res){
    res.send("cadastrarCliente")
});

app.get("/alterarSocio",function(req,res){
    res.send("alterarSocio")
});

app.get("/alterarCliente",function(req,res){
    res.send("alterarCliente")
});
app.listen(8081,function(){
    console.log("server roodando");
});