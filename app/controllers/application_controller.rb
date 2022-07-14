class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/animal_control_requests' do
    requests = Animal_control_request.all
    requests.to_json
  end

  get '/completed_request_forms' do
    completed_requests = Completed_request_form.all
    completed_requests.to_json
  end

  post "/animal_control_requests" do
    animal_control_requests = Animal_control_request.create(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
      description: params[:description]
    )
    animal_control_requests.to_json
  end

  post '/completed_request_forms' do
    completed_request_forms = Completed_request_form.create(
      client_name: params[:client_name],
      address: params[:address],
      number: params[:number],
      email: params[:number],
      reason_for_contact: params[:reason_for_contact],
      heard_from: params[:heard_from],
      inspection_fee: params[:inspection_fee],
      trap_installation_fee: params[:trap_installation_fee],
      price_for_animal_removal_or_relocation: params[:price_for_animal_removal_or_relocation],
      exclusion_and_preventative_work: params[:exclusion_and_preventative_work],
      description_of_work: params[:description_of_work],
      other_notes: params[:other_notes],
      sub_total: params[:sub_total],
      state_sales_tax: params[:state_sales_tax],
      deposit: params[:deposit],
      total: params[:total]
    )
  end

  patch '/completed_request_forms/:id' do 
    completed_request_form = Completed_request_form.find(params[:id])
    completed_request_form.update(
      client_name: params[:client_name],
      address: params[:address],
      number: params[:number],
      email: params[:number],
      reason_for_contact: params[:reason_for_contact],
      heard_from: params[:heard_from],
      inspection_fee: params[:inspection_fee],
      trap_installation_fee: params[:trap_installation_fee],
      price_for_animal_removal_or_relocation: params[:price_for_animal_removal_or_relocation],
      exclusion_and_preventative_work: params[:exclusion_and_preventative_work],
      description_of_work: params[:description_of_work],
      other_notes: params[:other_notes],
      sub_total: params[:sub_total],
      state_sales_tax: params[:state_sales_tax],
      deposit: params[:deposit],
      total: params[:total]
    )
  end

  delete '/completed_request_forms/:id' do
    completed_request_form = Completed_request_form.find(params[:id])
    completed_request_form.destroy
    completed_request_form.to_json
  end

  delete '/animal_control_requests/:id' do 
    animal_control_requests = Animal_control_request.find(params[:id])
    animal_control_requests.destroy
    animal_control_requests.to_json
  end

end
