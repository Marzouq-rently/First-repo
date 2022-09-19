#This binarysearch funcion is using iteration method
def binarysearch(x,arr,low,high)
    while low!=high do
        mid=(low+high)/2
        if x==arr[mid] then
            return mid
        elsif x>arr[mid] then
            low=mid+1
        else
            high=mid-1
        end
    end
    return -1
end

#This binarysearch funcion is using recursive method
def binaryrecur(x,arr,low,high)
    if low>high then 
        return False
    else
        mid=(low+high)/2
        if x==arr[mid] then
            return mid
        elsif x>arr[mid] then
            return binaryrecur(x,arr,mid+1,high)
        else
            return binaryrecur(x,arr,low,mid-1)
        end
    end
    return -1
end


print("Enter the number of array elements you want: ")
len=gets.chomp.to_i
low=0
high=len-1
arr=[]
print("Enter the elements: ")
for i in 0..len-1 do
    arr[i]=gets.chomp.to_i
end
arr=arr.sort
print(arr)
print("Enter the element to search: ")
x=gets.chomp.to_i
find=binaryrecur(x,arr,low,high)
if find==-1 then
    print("There is no such number")
else
    print("The number #{x} is at the index #{find} of the array")
end