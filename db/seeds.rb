100.times do |index|
    Customer.create(family_name: "藤井", given_name: "清行", email: "customer_#(index)@sparta.com")
end