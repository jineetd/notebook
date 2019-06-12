import RestModel from 'discourse/models/rest';

/* has to be implemented for /discourse/controllers/notebook.js.es6 inorder to use 
discourse store properly*/
export default RestModel.extend({
	//required when something puts request via discourse store
	updateProperties() {
    return this.getProperties('content');
  }
});
