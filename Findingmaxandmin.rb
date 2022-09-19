require "./maxminmodule.rb"

print("Enter number 1: ")
num1=gets.chomp.to_i
print("Enter number 2: ")
num2=gets.chomp.to_i
great=Mamin.max(num1,num2)
small=Mamin.min(num1,num2)
puts("The greater number is #{great}")
puts("The smallest number is #{small} ")