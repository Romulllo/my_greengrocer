store_items = { milk: 1, bread: 3, cheese: 5 }

puts 'Welcome to my store!'
sleep 1

puts 'In our store today:'

store_items.each do |item, price|
  puts "#{item}: R$#{price}"
end
sleep 1

user_item = ''

shopping_cart = []

until user_item == :quit
  puts "What do you want to buy? Type 'quit' to checkout"
  user_item = gets.chomp.to_sym
  
  if store_items.key?(user_item)
    shopping_cart << user_item
  elsif user_item == :quit
    puts "Here is what you bought:"
  else
    puts "Sorry, we dont have #{user_item} today"
  end
end

total_ammount = 0

shopping_cart.each do |item|
  total_ammount += store_items[item]
end

sleep 1
puts '----------------------'
sleep 1
shopping_cart.each do |item|
  puts "#{item}, R$#{store_items[item]}"
end
sleep 1

puts '----------------------'
sleep 1

puts "You need to pay: R$#{total_ammount}"
puts '----------------------'
sleep 1
