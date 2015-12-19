def calculate_tax(income)
  tax_rate = 0.2
  yield income * tax_rate
end

income = 60000
net_income = income

calculate_tax(income) do |tax|
  puts "You owe #{tax}."
  net_income -= tax
end

puts "Your net income: #{net_income}"
