print("Enter the word: ")
word=gets.chomp
len=word.length
word=word.downcase
word1=""
#word1=word.reverse
for i in 1..len do
    word1=word1+word[-i]
end
flag=0
for i in 0..len-1 do
    if word[i]==word1[i] then
        next #instead of continue it is next in ruby.
    else
        flag=1
        break
    end
end
if flag==0 then
    puts(" It is a palindrome")
else
    puts("It is not a palindrome")
end

#without using string reverse
j=-1
flag1=0
for i in 0..len-1 do
    if word[i]==word[j] then
        j-=1
        next
    else
        flag1=1
        break
    end
end
if flag1==0 then
    puts(" It is a palindrome")
else
    puts("It is not a palindrome")
end

