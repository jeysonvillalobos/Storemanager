module.exports = {

	Controller:function(controller){
		return require('../app/controllers/' + controller);
	},

	Model:function(model){
		return require('../app/models/' + model);
	}

}