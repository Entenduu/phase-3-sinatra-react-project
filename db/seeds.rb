puts "🌱 Seeding spices..."
Animal_control_request.create(name:'test', phone_number: "1234567", email: "test@email", description: 'test')
Completed_request_form.create(client_name: 'test', street_address_line_1: '123 st', street_address_line_2: '345ave', city: 'abc town', state: 'ny', zip_code:'12345', phone_number:'1234567', email: 'test', date_of_inspection: 'dont matter', nuisance_animal:'polar bear', inspection_fee: '12', trap_installation_fee:'400', price_for_animal_removal_or_relocation: '500', exclusion_and_preventative_work: '444', sub_total: '50000000', state_sales_tax: 'test', deposit: '500', total: 'hello', signed_and_paid: 'fo sho')
# Seed your database here

puts "✅ Done seeding!"
