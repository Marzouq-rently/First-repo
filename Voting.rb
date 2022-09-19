class Myclass
    def voting
        print("enter your name: ")
        name=gets.chomp
        print("enter your age: ")
        age=gets.to_i
        if (age>0) then
            if (age<18) then
                print("#{name} is too young to vote\n")
            else
                print("#{name} is ready for voting\n")
            end
        else
            print("wrong input\n")
        end
        return name
    end
    
end
class Person
    def set(name)
        @name=name
    end
    def show
        return @name
    end
    def talk
        return "#{@name} says hello"
    end
end
ob=Myclass.new
c=ob.voting
newperson=Person.new
newperson.set(c)
puts(newperson.show)
puts(newperson.talk)