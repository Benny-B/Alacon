class Tweet < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
 
  validates_presence_of :user
  validates_presence_of :content

 
  


  default_scope order: 'tweets.created_at DESC'
end
