require 'bottles'

RSpec.describe Bottles do
  context 'test the first verse' do
    it 'returns the first verse' do
      verse99 = Bottles.new.verse(99)
      expect(verse99).to eq("99 bottles of milk on the wall, 99 bottles of milk.\nTake one down and pass it around, 98 bottles of milk on the wall.\n")
    end
  end
  context 'test another verse' do
    it 'returns the first verse' do
      verse3 = Bottles.new.verse(3)
      expect(verse3).to eq("3 bottles of milk on the wall, 3 bottles of milk.\nTake one down and pass it around, 2 bottles of milk on the wall.\n")
    end
  end
  context 'test the second verse' do
    it 'returns the second verse' do
      verse2 = Bottles.new.verse(2)
      expect(verse2).to eq("2 bottles of milk on the wall, 2 bottles of milk.\nTake one down and pass it around, 1 bottle of milk on the wall.\n")
    end
  end
  context 'test the first verse' do
    it 'returns the first verse' do
      verse1 = Bottles.new.verse(1)
      expect(verse1).to eq("1 bottle of milk on the wall, 1 bottle of milk.\nTake it down and pass it around, no more bottles of milk on the wall.\n")
    end
  end
  context 'test the zero verse' do
    it 'returns the zero verse' do
      verse0 = Bottles.new.verse(0)
      expect(verse0).to eq("No more bottles of milk on the wall, no more bottles of milk.\nGo to the store and buy some more, 99 bottles of milk on the wall.\n")
    end
  end
  context 'test a couple of verses' do
    it 'returns a couple of verses' do
      verses = Bottles.new.verses(55, 54)
      expect(verses).to eq("55 bottles of milk on the wall, 55 bottles of milk.\nTake one down and pass it around, 54 bottles of milk on the wall.\n\n54 bottles of milk on the wall, 54 bottles of milk.\nTake one down and pass it around, 53 bottles of milk on the wall.\n")
    end
  end
  context 'test a few verses' do
    it 'returns a few verses' do
      verses = Bottles.new.verses(74, 72)
      expect(verses).to eq("74 bottles of milk on the wall, 74 bottles of milk.\nTake one down and pass it around, 73 bottles of milk on the wall.\n\n73 bottles of milk on the wall, 73 bottles of milk.\nTake one down and pass it around, 72 bottles of milk on the wall.\n\n72 bottles of milk on the wall, 72 bottles of milk.\nTake one down and pass it around, 71 bottles of milk on the wall.\n")
    end
  end
end

# 20   def test_verse_2
# 2expected =
# 2  "2 bottles of milk on the wall, " +
# 2  "2 bottles of milk.\n" +
# 2  "Take one down and pass it around, " +
# 2  "1 bottle of milk on the wall.\n"
# 2assert_equal expected, Bottles.new.verse(2)
# 27   end
# 28
# 29   def test_verse_1
# 3expected =
# 3  "1 bottle of milk on the wall, " +
# 3  "1 bottle of milk.\n" +
# 3  "Take it down and pass it around, " +
# 3  "no more bottles of milk on the wall.\n"
# 3 assert_equal expected, Bottles.new.verse(1)
# 36   end
# 37
# 38   def test_verse_0
# 3expected =
# 4  "No more bottles of milk on the wall, " +
# 4  "no more bottles of milk.\n" +
# 4  "Go to[…]”
