class String
  def to_cents
    /\A\$\d+\.\d+\z/ === self ? self.match(/\A\$(\d+)\.(\d+)\z/)[1..2].join("").to_i
 : nil
  end
end