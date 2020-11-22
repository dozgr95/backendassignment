Company.create(name: 'Glencore') # id 1
Company.create(name: 'Syngenta') # id 2
Company.create(name: 'LafargeHolcim') # id 3

Client.create(companies: [1,2], name: 'Alfredo') # client 1 invested in Glenncore and Syngenta
Client.create(companies: [3], name: 'Marcello') # client 2 invested in LarageHolcim
Client.create(companies: [], name: 'Bob') # client 3 invsted in none of them
Client.create(companies: [1,2,3], name: 'Maria') # client 4 invsted in all of three

