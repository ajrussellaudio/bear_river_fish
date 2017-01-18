class Bear

  def initialize( name )
    @name = name
    @belly = [  ]
  end

  def name
    return @name
  end

  def belly
    return @belly
  end

  def take_fish( river )
    fish_I_am_going_to_eat = river.fish.pop()
    @belly.push( fish_I_am_going_to_eat )
  end

end