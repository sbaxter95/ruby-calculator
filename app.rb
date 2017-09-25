def add num1, num2 
  num1.to_f + num2.to_f
end

def subtract num1, num2
  num1.to_f - num2.to_f
end

def multiply num1, num2
  num1.to_f * num2.to_f
end

def division num1, num2
  num1.to_f / num2.to_f
end

def square_root num 
	Math.sqrt(num.to_f)
end

def power num, exponent
	num.to_f ** exponent.to_f
end

def bmi height, weight 
	puts "i(mperial) or m(etric) system?"
	measurement_system = gets.chomp
	if measurement_system == "m"
		puts weight.to_f / (height.to_f ** 2)
	else 
		pounds = weight.to_f * 2.2
		inches = height.to_f * 39.37
		puts pounds / (inches ** 2) * 703
	end 
end

puts "Choose a s(imple) or a(dvanced) calculator, or a b(mi) calculator"
option = gets.chomp

if option == "s" 
	puts "Choose an operation - a(ddition), s(ubtraction), m(ultiplication) or d(ivision)"
	operation = gets.chomp
	if operation == "a"
		puts "Enter two numbers"
		num1 = gets.chomp
		num2 = gets.chomp
		puts add num1, num2
	elsif operation == "s"
		puts "Enter two numbers"
		num1 = gets.chomp
		num2 = gets.chomp
		puts subtract num1, num2
	elsif operation == "m"
		puts "Enter two numbers"
		num1 = gets.chomp
		num2 = gets.chomp
		puts multiply num1, num2
	else 
		puts "Enter two numbers"
		num1 = gets.chomp
		num2 = gets.chomp
		puts division num1, num2
	end
elsif option == "a"
  puts "Choose whether you want to find the sq(are root) or the p(ower)"
  choice = gets.chomp
  if choice == "sq"
  	puts "Enter a number"
  	num = gets.chomp
  	puts square_root num
  else 
  	puts "Enter a number and an exponent"
  	num = gets.chomp
  	exponent = gets.chomp
  	puts power num, exponent
  end
elsif option == "b"
	puts "Enter a height and weight"
	height = gets.chomp
	weight = gets.chomp
	bmi height, weight
end


