#wk6hauntedhouse.rb

class Game
  attr_accessor :hero, :rooms, :scenarios, :enemy_type

  def initialize
    @hero = Hero.new
    @rooms = 10
    @scenarios = ["medicine", "enemy", "nothing"]
    @enemy_type = [ {"name" => "Zombie", "health" => 100}, 
                    {"name" => "Snake",  "health" => 20}]
    start_game
  end

  def start_game
    puts 'Welcome to the Haunted House.'
    enter_room
  end

  def random_scenario
    scenario = scenarios.shuffle.last
    case scenario
    when "medicine"
      medicine
    when "enemy"
      enemy
    when "nothing"
      nothing
    end
  end

  def random_enemy_type
    enemy = enemy_type.shuffle.last
    puts enemy
    puts "You encounter an #{enemy["name"]} here with health #{enemy["health"]}."
    
=begin
    case enemy
    when "zombie"
      puts "You've encountered a Zombie!"
    when "snake"
      puts "You've encountered a Snake!"
    end
=end
  end


  def enter_room
    while rooms > 0 do
      puts 'Choose door 1 or door 2'
      choice = gets.chomp
      
      if choice == '1'
        random_scenario
      elsif choice == '2'
        random_scenario
      else
        break
      end
    
    end
  end

  def medicine
    puts "You picked up medicine!"
    self.hero.health += 50
    puts "You now have #{hero.health} health"
    self.rooms -= 1
  end

  def enemy
    puts "There's an enemy here! "
    random_enemy_type
    choice = 0

    while choice != 3 do
      puts "Choose an action:"
      puts "1.Attack 2.Defend 3.Flee"
      choice = gets.chomp
      
      if choice == '1'
        attack_action
      elsif choice == '2'
        defend_action
      elsif choice == '3'
        flee_action
      else
        puts "Please chooose a valid action 1-3"
      end

      self.rooms -= 1

    end

  end

  def nothing
    puts "There is nothing in here!"
    self.rooms -= 1
  end

  def attack_action
    puts "Your health is #{self.hero.health}"
    puts "You attack!"
    outcome = rand(0..1)    #random number 0=win 1=lose
    
    if outcome == 0 #if win
      puts "You have slain the enemy!" #You have slain the enemy!
    #break loop
    elsif outcome == 1 #if lose
      damage = rand(1..10)
      puts "You have been injured.  You lose #{damage} health" #You lose health
      self.hero.health -= damage
      puts "You now have #{self.hero.health} health."
    #go back to choices
    end
  end

  def defend_action
    puts "You defend yourself!"
  end

  def flee_action
    puts "You flee!"
  end

end


class Enemy
  attr_accessor :health, :name
  def initialize(type)
    @name = type.key
    @health = type.value
  end
end

class Hero
  attr_reader :name
  attr_accessor :health
  def initialize
    @name = "Hero"
    @health = 100
  end
end

Game.new
