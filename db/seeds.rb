puts "🌱 Seeding spices..."
Animal_control_request.create(name:'test', phone_number: "1234567", email: "test@email", description: 'test')
Completed_request_form.create(client_name: 'test', address: "123st", number:'1234567', email: 'test', reason_for_contact:"bugs", heard_from:'test', inspection_fee: '12', trap_installation_fee:'400', price_for_animal_removal_or_relocation: '500', exclusion_and_preventative_work: '444', description_of_work: 'test', sub_total: '50000000', state_sales_tax: 'test', deposit: '500', total: 'hello')
# Seed your database here

puts "✅ Done seeding!"
