class Datypes
    def self.integertype
        print("\nEnter the number")
        num=gets.chomp.to_i
        return num
    end
    def self.floattype
        print("\nEnter the number: ")
        num=gets.chomp.to_f
        return num
    end
end
print("\nEnter 'f' if you want float and 'i' if you want integer:  ")
c=gets.chomp
if c=='f' then
    num1=Datypes.floattype
    num2=Datypes.floattype
elsif c=='i' then
    num1=Datypes.integertype
    num2=Datypes.integertype
else
    print("wrong input")
end
print("\nType the arithmatic operation you want--(+,-,*,/): ")
operator=gets.chomp
case operator
when "+" then
    puts("The addition is #{num1+num2}")
when "-" then
    puts("The subtraction is #{num1-num2}")
when "*" then
    puts("The multiplication is #{num1*num2}")
when "/" then
    begin
        k=num1/num2
        puts("The division is #{num1/k}")
    rescue ZeroDivisionError #This error occurs if the datatype is integer
        puts("Zero division error occured")
    end
else
    puts "Wrong input"
end