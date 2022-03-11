const Sequelize = require('sequelize')
const sequelize = new Sequelize('nrs_estetica1','root','Vinicius13$13',{
    host:"localhost",
    dialect:'mysql'
})

sequelize.authenticate().then(function(){
    console.log("conectado")
}).catch(function(erro){
    console.log('   falha   '+ erro)
})