#name:notebook
#version:0.1.0
enabled_site_setting :notebook_enabled

after_initialize do
	load File.expand_path('../app/controllers/notebook_controller.rb',__FILE__)

	Discourse::Application.routes.append do	
		#map notebook to notebook controller's index
		get '/notebook' => 'notebook#index'
	end
end