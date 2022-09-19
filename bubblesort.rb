def bubblesort(arr,len)
    for i in 0..len-1 do
        (len-1-i).times do |j|
            if arr[j]>arr[j+1] then
                arr[j],arr[j+1]=arr[j+1],arr[j]
            end
        end
    end
    return arr
end            
print("enter the nmber of elements you want: ")
len=gets.chomp.to_i
arr=[]
print("enter the elements: \n")
for i in 0..len-1 do
    arr[i]=gets.chomp.to_i
end
arr=bubblesort(arr,len)
print(arr)