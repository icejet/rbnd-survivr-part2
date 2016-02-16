class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(contestant)
    @members << contestant
  end

  def cast_votes(finalists)
    votes = {}
    finalists.each {|finalist| votes[finalist.name] = 0 }
    @members.each do |member|
      picked = finalists.sample.name
      votes[picked] += 1
      puts "#{member} votes for #{picked}"
    end
    votes
  end

  def report_votes(votes)
    votes.each do |k, v|
      puts "#{k}: #{v}"
    end
  end

  def announce_winner(final_votes)
    high = final_votes.values.max
    winner = final_votes.key(high)
    puts "#{winner.to_s.green} wins!"
    return winner
  end
end
