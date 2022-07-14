class CreateCompletedRequestForms < ActiveRecord::Migration[6.1]
  def change
    create_table :completed_requests do |t|
      t.string :client_name
      t.string :address
      t.string :number
      t.string :email
      t.string :reason_for_contact
      t.string :heard_from
      t.string :inspection_fee
      t.string :trap_installation_fee
      t.string :price_for_animal_removal_or_relocation
      t.string :exclusion_and_preventative_work
      t.string :description_of_work
      t.string :other_notes
      t.string :sub_total
      t.string :state_sales_tax
      t.string :deposit
      t.string :total
      t.timestamp :created_at
      
    end
  end
end
