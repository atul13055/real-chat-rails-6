class User < ApplicationRecord

  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Atul yada', 'Amana sharma ', 'sunny singh ','rahul chouhan','nikhil solanki','aman patel', 'viveak sharma','nilesh kumar' ]
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{number}"
    create(username: username)
  end

end
