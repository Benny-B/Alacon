class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
         #:confirmable, :stretches => 20

  attr_accessible :education, :first_name, :last_name, :email, :password, :password_confirmation
end
