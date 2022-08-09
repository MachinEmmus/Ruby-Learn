require 'csv'

file_location = "prices_3.csv"

data = [
    ["date", "price"],
    ["2020-03-01", 5000.00],
    ["2020-03-02", 4000.00],
    ["2020-03-03", 8000.00]
]

content = data.map{ |d| d.join(",") }.join("\n")

File.write(file_location, content)