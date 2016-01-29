# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

puts "Hello World"

def puts_string
  puts "Hello darling"
  sleep(0.5)
end

#10.times() {putsString}

james_bond = {:first_name => "James", :middle_name => "Robert", :last_name => "Bond"}

james_bond.each_key { |key| puts(james_bond[key]) }

