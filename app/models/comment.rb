class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::History::Tracker
  
  field :name, type: String
  field :message, type: String

  belongs_to :post
end
