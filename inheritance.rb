#lets create a class with constructors and assert_response
#The class functionality might not be the best but it shows the basics of inheritance in ruby
class Person
  #instance variable..
  @@no_of_person = 0
  def initialize(name,hei,color)
    @name,@height,@color = name,hei,color
    @@no_of_person +=1
  end
  
  def height
    @height
  end
  
  def name
    @name
  end
  
  def color
    @color
  end
  
  def color=(val)
    @color = val
  end
  
  def name=(val)
    @name = val
  end
  
  def height=(val)
    @height = val
  end
  
  def to_s
    "your name is #{@name} and your height is #{@height} and your skin color is #{@color}."
  end
  
  #class methods.
  
  def self.numberOfPerson
    @@no_of_person
  end
end


#tochi = Person.new("tochi",5.11,"Black")
#chiagozie = Person.new("chiagozie",5.10,"Mixed")
#val = Person.numberOfPerson
#puts val
#puts tochi
#testing my assessor and mutators..
#chiagozie.color = "Oboi u black which one be mixed"
#val = chiagozie.color
#puts val

#going to expand this class 
#classes are blue prints for objects
#using inheritance

class Igbo < Person
  def initialize (name,age,weight,sex,religion,color,hei)
    super(name,hei,color)
    @age,@weight,@sex,@religion = age,weight,sex,religion
  end
  
  #extend the class..
  
  def age
    @age
  end
  
  def weight
    @weight
  end
  
  def sex
    @sex
  end
  
  def religion
    @religion
  end
  
  def age=(val)
    @age = val
  end
  
  def sex=(sex)
    @sex = sex
  end
  
  def religion=(reli)
    @religion = reli
  end
  
  def weight=(val)
    @weight = val
  end
  
  def to_s
    puts super.to_s + 
    " You are an Igbo man no doubt. Your age is: #{@age}, you weight around #{@weight} pounds, 
    your sex is #{@sex} and your religion is #{@religion}. But praticality might say otherwise."
  end
    
end

#this shows the implementation of inheritance in RUBY_VERSION


tochi = Igbo.new("tochi Opara Chiagozie","26",240,"Male","Christainity","Dark",5.10)
puts tochi

