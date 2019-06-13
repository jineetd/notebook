#name:notebook
#version:0.3.0
enabled_site_setting :notebook_enabled

register_asset 'stylesheets/notebook.css'

load File.expand_path('../app/note_store.rb', __FILE__)

after_initialize do
	load File.expand_path('../app/controllers/notebook_controller.rb',__FILE__)
	load File.expand_path('../app/controllers/notes_controller.rb', __FILE__)
	
	Discourse::Application.routes.append do	
		#map notebook to notebook controller's index
		get '/notebook' => 'notebook#index'
		get '/notes' => 'notes#index'
		
		put '/notes/:note_id' => 'notes#update'
	end
end