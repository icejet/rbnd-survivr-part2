class Game
  attr_reader :tribes

  def initialize(*tribes)
    @tribes = []
    tribes.map { |tribe| add_tribe(tribe) }
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(new_tribe)
    # Merge tribes here
    merged_tribes = []
    @tribes.map { |tribe| merged_tribes += tribe.members }
    Tribe.new(name: new_tribe, members: merged_tribes)
  end

  def individual_immunity_challenge
    @tribes.first.members.sample
  end
end
