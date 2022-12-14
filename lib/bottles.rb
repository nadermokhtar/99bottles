class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)

    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of milk on the wall, " +
      "#{bottle_number.quantity} #{bottle_number.container} of milk.\n" +
      bottle_number.action +
      "#{next_bottle_number.quantity} #{next_bottle_number.container} of milk on the wall.\n"
  end

  def container(number)
    BottleNumber.new(number).container
  end

  def quantity(number)
    BottleNumber.new(number).quantity
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun
  end

  def action(number)
    BottleNumber.new(number).action
  end

  def successor(number)
    BottleNumber.new(number).successor
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def quantity
    if number.zero?
      'no more'
    elsif number.negative?
      '99'
    else
      number.to_s
    end
  end

  def pronoun
    if number == 1
      'it'
    else
      'one'
    end
  end

  def action
    if number.zero?
      'Go to the store and buy some more, '
    else
      "Take #{pronoun} down and pass it around, "
    end
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end
end
