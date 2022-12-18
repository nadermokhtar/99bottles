class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def quantity(number)
    if number.zero?
      'no more'
    elsif number.negative?
      '99'
    else
      number.to_s
    end
  end

  def pronoun(number)
    if number == 1
      'it'
    else
      'one'
    end
  end

  def action(number = :FIXEME)
    if number.zero?
      'Go to the store and buy some more, '
    else
      "Take #{pronoun(number)} down and pass it around, "
    end
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of milk on the wall, " +
      "#{quantity(number)} #{container(number)} of milk.\n" +
      action(number) +
      "#{quantity(number - 1)} #{container(number - 1)} of milk on the wall.\n"
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end
end
