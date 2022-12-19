# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(amount)
    if amount > 10
      @happiness = 10
    elsif amount < 0
      @happiness = 0
    else
      @happiness = amount
    end
  end

  def hygiene=(amount)
    if amount > 10
      @hygiene = 10
    elsif amount < 0
      @hygiene = 0
    else
      @hygiene = amount
    end
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = (@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = (@happiness + 2)
    self.hygiene = (@hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = (@happiness + 3)
    friend.happiness = (friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when 'politics'
      self.happiness = (@happiness - 2)
      friend.happiness = (friend.happiness - 2)
      "blah blah partisan blah lobbyist"
    when 'weather'
      self.happiness = (@happiness + 1)
      friend.happiness = (friend.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end

# stella = Person.new('Stella')
# stella.hygiene = 3
# puts stella.work_out
# binding.pry