require 'csv'

file_location = "date-price.csv"

content = File.read(file_location)

data = CSV.parse(content, headers: true)

data.each do |data|
    puts "DATE: #{data['date']} PRICE: #{data['price']}"
end

