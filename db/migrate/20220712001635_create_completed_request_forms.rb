class CreateCompletedRequestForms < ActiveRecord::Migration[6.1]
  def change
    create_table :completed_request_forms do |t|
      t.string :client_name
      t.string :street_address_line_1
      t.string :street_address_line_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :email
      t.string :date_of_inspection
      t.string :nuisance_animal
      t.string :inspection_fee
      t.string :trap_installation_fee
      t.string :price_for_animal_removal_or_relocation
      t.string :exclusion_and_preventative_work
      t.string :sub_total
      t.string :state_sales_tax
      t.string :deposit
      t.string :total
      t.string :signed_and_paid
      t.timestamp :created_at
      
    end
  end
end
