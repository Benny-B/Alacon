class Tweet < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
 
  validates_presence_of :user
  validates_presence_of :content

  after_create :message

  def message

  	msg = {
      :id => User.find(self.user_id).id,
  		:content => self.content,
  		:user => User.find(self.user_id).first_name
  	}
  	 $redis.publish('new post', msg.to_json)
  end
  


  default_scope order: 'tweets.created_at DESC'
end
