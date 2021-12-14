require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    User.delete_all
    first_names = %w[George Tim Luke Sarah Kimberly Tom Laura]
    last_names = %w[Newman Tish Smith Herman]

    first_names.each do |f|
      last_name = last_names.shuffle.first
      age = (1..100).to_a.shuffle.first
      company = %w[gmail msn aol].shuffle.first
      email = f + '.' + last_name + '@' + company + '.com'
      User.create!(name: f, last_name: last_name, age: age, email: email)
    end
  end


  it 'can calculate average age of all users' do
    result = Calculate.average_age
    answer = 0
    User.pluck(:age).each { |ag| answer += ag}
    expect(result).to eq(answer / User.all.length)
  end

  it "can calculate how many users have letter 'a' in their name" do
    result = Calculate.how_many('a')
    expect(result).to eq(2)
  end
end
