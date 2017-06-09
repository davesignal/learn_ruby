class Book
  def title=(name)
    holster = name.split(" ")
    holster.each do |x|
      case x.downcase
      when "and", "in", "the", "of", "or", "an", "a"
      else
        x.capitalize!
      end
    end
    holster[0].capitalize!
    name = holster.join(" ")
    @title = name
  end
  def title
    @title
  end
end
