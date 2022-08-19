require 'set'

def majority_vote(elements)
  candidate = nil
  count = 0

  elements.each { |current|
    # Items are read from the stream, one by one. If there is no current candidate
    # (either at the start of the algorithm, or because the count has been decremented to zero),
    # then the current element is selected as the candidate and its count set to one.
    if count == 0
      candidate = current
      count = 1
      # If there is already a candidate, and the current element matches this, then the count is incremented.
      # We're getting reinforcement that the current candidate is the modal item.
    elsif candidate == current
      ++count
      # Finally, if the current element does not match, we decrement the count (this is like casting out pairs).
    else
      --count
    end
  }
  nil ? count == 0 : candidate
end

def heavy_hitters(elems, k)
  if elems.length < k
    raise "k must be >= number of elements (#{elems.length}) provided"
  end
  winners = {}
  elems.each { |current|

    if winners.member? current || winners.length < k
      winners[current] += 1
    elsif (winners[current] = 1)
    end
  }
end

if __FILE__ == $0
  elems = Array.new(20) { rand(1...6) % 5 }
  pp elems
  pp majority_vote(elems)
  pp elems.hash
  new_set = Set.new([1, 2, 3])
  new_set.length
end
