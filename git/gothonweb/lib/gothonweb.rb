require_relative "gothonweb/version"
require "sinatra"
require "erb"



	get '/' do 
		greeting = "Good Morning!"
		erb :index, :locals => {:greeting => greeting}
	end

	get '/hello' do
		erb :hello_form
	end

	post '/hello' do
		greeting = "#{params[:greet] || "Hello"}, #{params[:name] || "Nobody"}"
		erb :index, :locals => {:greeting => greeting}
	end