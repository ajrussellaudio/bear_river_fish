class River

  attr_reader :name # short way

  def initialize( name )
    @name = name
    @fish = [  ]
  end

  def fish # long way
    return @fish
  end

  def add_fish( new_fish )
    @fish.push( new_fish )
  end

end