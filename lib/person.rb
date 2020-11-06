class Person

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end
  attr_accessor :bank_account
  attr_reader :happiness, :name, :hygiene
  def happiness=(index = 8)
    (0..10) === index ? @happiness = index : index < 0? @happiness = 0 : @happiness = 10
    # if index < 0 
    #   @happiness = 0
    # elsif index > 10
    #   @happiness = 10 
    # else
    #   @happiness = index
    # end
  end 

  def hygiene=(index = 8)
    (0..10) === index ? @hygiene = index : index < 0? @hygiene = 0 : @hygiene = 10
    # if index < 0 
    #   @hygiene = 0
    # elsif index > 10
    #   @hygiene = 10 
    # else
    #   @hygiene = index
    # end
  end 
  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(pay)
    @bank_account += pay
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else 
      'blah blah blah blah blah'
    end
  end
end