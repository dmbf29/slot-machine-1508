require_relative '../slot_machine'


def test_scenario(reels, score)
  it "should return #{score} if we get #{reels.join(', ')}" do
    slot_machine = SlotMachine.new
    expect(slot_machine.score(reels)).to eq(score)
  end
end

describe SlotMachine do
  describe '#score' do
    test_scenario(['🤩', '🤩', '🤩'], 50)
    test_scenario(['⭐️', '⭐️', '⭐️'], 40)
    test_scenario(['🛎', '🛎', '🛎'], 30)
    test_scenario(['7', '7', '7'], 20)
    test_scenario(['🍒', '🍒', '🍒'], 10)
    test_scenario(['🤩', '⭐️', '🤩'], 25)
    test_scenario(['🤩', '⭐️', '⭐️'], 20)
    test_scenario(['🛎', '🛎', '🤩'], 15)
    test_scenario(['7', '🤩', '7'], 10)
    test_scenario(['🤩', '🍒', '🍒'], 5)
    test_scenario(['🤩', '🍒', '🛎'], 0)
    test_scenario(['⭐️', '🍒', '🛎'], 0)
    test_scenario(['⭐️', '🍒', '🍒'], 0)
  end
end
