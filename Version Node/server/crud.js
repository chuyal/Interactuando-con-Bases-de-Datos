var Usuario = require('./modelUsuarios.js') 

module.exports.crearUsuariochuy = function(callback){ 
  var arr = [{ email: 'chuy@gmail.com', user: "chuy", password: "123456"}, { email: 'juan@gmail.com', user: "juan", password: "123456"}]; 
  Usuario.insertMany(arr, function(error, docs) { 
    if (error){ 
      if (error.code == 11000){ 
        callback("usuario: chuy  password: 123456 </br>usuario: juan  password: 123456") 
      }else{
        callback(error.message) 
      }
    }else{
      callback(null, "Los usuaros se ha registrado correctamente") 
    }
  });
}
