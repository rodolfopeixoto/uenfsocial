class User < ActiveRecord::Base 

  validates_presence_of :username
  validates_uniqueness_of :username

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def request_friendship(user_2)
       self.friendships.create(friend: user_2)
  end
end
