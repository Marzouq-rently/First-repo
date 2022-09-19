def fibb(n)
    if n<=1 then
        return n
    else
        return fibb(n-1)+fibb(n-2)
    end
end
print("Enter the number: ")
number=gets.to_i
for i in 0..number do
    print("#{fibb(i)}, ")
end