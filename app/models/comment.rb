class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::History::Tracker
  include Mongoid::Attributes::Dynamic

  field :name, type: String
  field :message, type: String

  belongs_to :post
  belongs_to :user
end
