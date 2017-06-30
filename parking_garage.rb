@garage = []

i = 1
10.times do |i|
  @garage << {
    id: i + 1,
    available: true,
    check_in: 0,
    check_out: 0,
    paid: false
  }
  i += 1
end

def find_available_spot(garage)
  garage.each do |spot|
    if spot[:available] == true
      spot[:available] = false
      spot[:check_in] = Time.now
      p "Your spot is: #{spot[:id]}"
      p "Your checkin time is #{spot[:check_in]}"
      break
    end
  end
end

def checkout(ticket_id)
  client_spot =  @garage[ticket_id - 1]
  if client_spot[:available] == false
    client_spot[:available] = true
    client_spot[:check_out] = Time.now
    total_time_sec = client_spot[:check_out] - client_spot[:check_in]
    total_time_min = total_time_sec / 60.0
    p "The total time you were parked is #{total_time_min} minutes"
    total_time_hours = total_time_min / 60.0
    price = total_time_hours * 10
    p "You owe $#{price}"
    p "Please insert $#{price}"
    payment = gets.chomp.to_i
    while client_spot[:paid] == false  
      if payment > price
        p "Here is your change of: $#{payment - price}"
        p "Thank you for your payment."
        p "Have a nice day"
        client_spot[:paid] = true
      elsif payment < price
        p "You still owe: $#{price - payment}"
        p "Please enter the additional payment"
        payment = gets.chomp.to_i
        price = price - payment
      elsif payment == price  
        p "Thank you for your payment."
        p "Have a nice day"
        client_spot[:paid] = true
      end
    end
    p "Thank you for your stay, you may now exit"
  else 
    p "this isn't the right ticket, please try again" 
  end
end

p "Welcome to our Parking Garage Kiosk"
find_available_spot(@garage)
p "Please take the ticket and return the ticket when you check out"
p "We hope you enjoyed your stay"
p "Please enter your ticket_id"
ticket_id = gets.chomp.to_i
checkout(ticket_id)
