class String
  def shuffle
    self.split.shuffle.join(" ")
  end

  def shuffle_letters
    self.split("").shuffle.join("")
  end
end
