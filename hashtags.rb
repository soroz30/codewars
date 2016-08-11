class String
  def hashtags
    self.scan(/#\w+/)
  end
end

  hashtags('this #word is #hashtagged')