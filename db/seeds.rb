
User.create(name: 'Fraiz', email_address: 'fraiz@gmail.com')
User.create(name: 'Jose', email_address: 'jose@gmail.com')
User.create(name: 'Carlos', email_address: 'carlos@gmail.com')
User.create(name: 'Alfonso', email_address: 'alfonso@gmail.com')


1.upto(4) do |i| 
	#user = User.create(name: "Ironhack #{i}", email_address: "Ironhack#{i}@gmail.com")
	User.find(i).products.create(title: "Moto #{i}", description: "#{i}cv", biding_deadline: 2016 )
end