print("Enter the number: ")
num=gets.chomp.to_i
flag =0
if num==0 or num==1 then
    flag=1
end
for i in 2..num/2 do
    if num % i==0 then
        flag=1
        break
    end
end
if flag==0 then
    puts("#{num} is prime number")
else
    puts("#{num} is not a prime number")
end
