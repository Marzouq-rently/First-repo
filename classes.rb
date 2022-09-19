class Human
    def evolve
        puts("Humans evolve")
    end
end
class Person < Human #inheritance
    @@person=0
    def initialize(id,name,age)
        @id=id
        @name=name
        @age=age
        @@person+=1
    end
    def intro
        puts("My name is #{@name} and my age is #{@age} ")
    end
    def self.getPersoncount
        return @@person
    end
    def evolve#this is for runtime inheritanc example
        puts"Persons evolve"
    end
end

p1=Person.new(1,"James",12)
p2=Person.new(2,"David",24)
p1.intro
p2.intro
puts(Person.getPersoncount)
p1.evolve


class Box
    def initialize(h,w)
        @height=h
        @width=w
    end
    def getarea
        return @height*@width
    end

    def getw
        getwidth
    end
    def geth
        getheight
    end
    def seth(h)
        setheight(h)
    end
    def setw(w)
        setwidth(w)
    end
    private
    def getheight
        return @height
    end

    def getwidth
        return @width
    end

    def setheight(h)
        @height=h
    end

    def setwidth(w)
        @width=w
    end
    
end
b1=Box.new(5,6)
puts(b1.getarea)
puts b1.geth
b1.seth(3)
b1.setw(4)
puts(b1.getarea)
