class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
         #:confirmable, :stretches => 20

  attr_accessible :education, :first_name, :last_name, :email, :password, :password_confirmation
  validate :ala_confirm


  private

  def ala_confirm 
    errors.add(:Sorry,", you must have an ala account!") unless self.email.ends_with?("alastudents.org") || self.email.ends_with?("alaalumni.org") || self.email.ends_with?("africanleadershipacademy.org") || self.email.ends_with?("africanleadershipfoundation.org")
  end
end
