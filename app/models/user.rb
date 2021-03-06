class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
         #:confirmable, :stretches => 20

  attr_accessible :education,:latitude, :longitude, :first_name, :Bio, :resume, :last_name, :email, :password, 
        :password_confirmation, :picture

  has_attached_file :resume
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "75x75>" }
  has_many :project
  has_many :tweet

  validate :ala_confirm

  #query for Postgres
  def self.userSearch(query)
    if query
      find(:all,:conditions =>['first_name ILIKE ? OR last_name ILIKE ?',"%#{query}%","%#{query}%"])
    else
      find(:all)
    end
  end
  #never use both at the same time if you don't want it to blow on your face
  #query for Sqlite3
#  def self.userSearch(query)
#    if query
#      find(:all,:conditions =>['first_name LIKE ? OR last_name LIKE ?',"%#{query}%","%#{query}%"])
#    else
#      find(:all)
#    end
#  end


  private

  def ala_confirm 
    errors.add(:Sorry,", you must have an ala account!") unless self.email.ends_with?("alastudents.org") || self.email.ends_with?("alaalumni.org") || self.email.ends_with?("africanleadershipacademy.org") || self.email.ends_with?("africanleadershipfoundation.org")
  end
end
