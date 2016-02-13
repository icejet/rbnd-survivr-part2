class Tribe
  attr_reader :name, :members

  def initialize(options = {})
    @name = options[:name]
    @members = options[:members]
    puts "The #{@name.red} tribe formed."
  end

  def to_s
    @name
  end

  def tribal_council(immune = nil)
    allowed_out = @members.select {|member| member != immune}
    allowed_out.sample
  end

  def eliminate(contestant)
    @members.delete(contestant)
  end
end
