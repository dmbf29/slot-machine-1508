class SlotMachine
  def score(reels)
    # compose an array featuring all the things in ascending order of value
    items = ['🍒', '7', '🛎', '⭐️', '🤩']
    # check whether they're all different
    # check whether the length of the array is the same after calling .uniq
    # if the length of the reels after calling uniq is 3, score is none >:(
    # if the unique is 1, do the maths based on the index of the item in question.
    # if the unique is 2 and a joker is present, do the other maths

    if reels.uniq.length == 1
      index = items.index(reels.first)
      return (index + 1) * 10
    elsif reels.uniq.length == 2 && reels.include?('🤩')
      repeated_item = reels.sort[1]
      index = items.index(repeated_item)
      return (index + 1) * 5
    else
      return 0
    end
  end
end
