# 1.

# Classes - but in league of legends analogy.
# Imagine a class 'Champion' - each champion will have attributes like name, role, abilities.



class Champion # Here we define our class, course we can add more if we wanted like :summonerspells
  attr_accessor :name, :role, :abilities

  def initialize(name, role, abilities) # Here we have us initializing our class.
    @name = name
    @role = role
    @abilities = abilities
  end
end



# We can then move forward to make instances of these classes we just created!


Jhin = Champion.new("Jhin", "marksman", ["Dancing Grenade.", "Deadly Flourish.", "Captive Audience."])



# If we wanna test our classes are working fine, load up irb (copy and past our code) hit enter. Now try the following.
# puts Jhin.name
# puts Jhin.role
# puts Jhin.abilities
# The above commands should print our desired attributes!

# 2.

# Methods
# Methods are actions or behaviours that an object can perform, just like how in Lol champions can cast abilities.



class Champion
  attr_accessor :name, :role, :abilities

  def initialize(name, role, abilities)
    @name = name
    @role = role
    @abilities = abilities
  end

  # Lets add a method to our "Champion" class that we created above, that lets Jhin use an ability.

  def cast_ability(ability_name)
    if @abilities.include?(ability_name)
      puts "#{@name} casts #{ability_name}!"
    else
      puts "#{@name} doesn't have that ability!"
    end
  end
end



# Then we can use the following method.

Jhin = Champion.new("Jhin", "marksman", ["Dancing Grenade.", "Deadly Flourish.", "Captive Audience."])
Jhin.cast_ability("Dancing Grenade.")



# 3. Scope

# Scope determines the accessibility of variables, objects, and methods from all different parts of the code.

# Try to think of scope as the "Range" of a champions ability. Some champions have a really long range, some short, or some can be like senna ult(full scale).

# There are mainly 3 types of scopes we should be aware of.

# Local Scope ---- Variables that are defined within a method however are not accessible outside.
# Instance Scope ---- (or variables) that are prefixed with the `@` belong to that instance of the class.
# Class Scope ---- (or variables) that are prefixed with the `@@` are shared among all instances of the class!



class Champion
  @@total_champions = 0 # this is a class variable
end

def initialize(name, role, abilities)
  @name = name            # this happens to be an instance variable
  @role = role
  @abilities = abilities
  @@total_champions += 1


  def self.number_of_champions       # this happens to be a class method.
    @@total_champions
  end
end


# Now then with this in place every time a new champion is created, the class variable `@@total_champions` will increase by 1.
# How do we check that do you ask? Its simple. we just simply call the method.



Champion.number_of_champions # Output: 0

kaisa = Champion.new("Kaisa", "Marksman", ["Icathian Rain", "Void Seeker", "Killer Instinct"])
Champion.number_of_champions # Output: 1

