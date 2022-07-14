class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    "Hello World"
  end
  
  post "/" do
    animal_control_request = Animal_control_request.create(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
      description: params[:description]
    )
    animal_control_request.to_json
  end

  post "/animals" do
    animal_control_request = Animal_control_request.create(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
      description: params[:description]
    )
    animal_control_request.to_json
  end


end
