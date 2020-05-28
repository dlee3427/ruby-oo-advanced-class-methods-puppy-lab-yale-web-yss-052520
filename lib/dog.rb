# Add your code here
require 'pry'
class Dog 
    def name 
        @name 
    end
    
    def name=(name)
        @name = name
    end 
    
    @@all = []

    def initialize(name)
        @name = name
        save
    end 

    def save 
        @@all << self 
    end 

    def self.all 
        @@all
    end

    def self.clear_all 
        @@all.clear
    end

    def self.print_all
        puts @@all.map { |puppy| puppy.name }
    end 
end 