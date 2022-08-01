class Bottles
  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall," +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
      # when 6
      #   "1 six-pack of beer on the wall," +
      #     "1 six-pack of beer.\n" +
      #     "Take one down and pass it around, " +
      #     "#{number - 1} #{container(number - 1)} of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall," +
        "#{number} #{container(number)} of beer.\n" +
        "Take #{pronoun(number)} down and pass it around, " +
        "#{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n"
    end
  end

  def verses(starting, ending)
    starting.downto(ending).collect { |i| verse(i) }.join("\n")
  end

  private

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number
    end
  end
end