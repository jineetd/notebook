/*route for the path '/notebook' as defined in notebook-route-map.js.es6*/
export default Discourse.Route.extend({
	renderTemplate(){
		//renders the template /template/notebook.hbs
		this.render('notebook');
	}
});