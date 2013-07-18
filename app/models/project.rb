class Project < ActiveRecord::Base
  attr_accessible :achievements, :contributors, :date, :description, :position, :role, :title, :type_of_project,
   :user_id

  belongs_to :user

  validates :title, presence: true
  validates :type_of_project,presence: true
  validates :role,presence: true
  validates :position,presence: true
  validates  :description,presence: true
  validates :date,presence: true
  validates :contributors,presence: true
  validates :achievements,presence: true

end
