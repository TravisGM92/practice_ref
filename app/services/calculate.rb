class Calculate

  def self.average_age
    all_users = User.all
    ages = all_users.map { |user| user.age}
    total_ages = 0
    ages.each do |age|
      total_ages += age
    end
    total_ages / all_users.length
  end

  def self.how_many(letter)
    all_users = User.all
    names = all_users.map { |user| user.name}
    result = 0
    names.each do |name|
      name.include?(letter) ? result += 1 : next
    end
    result
  end
end
