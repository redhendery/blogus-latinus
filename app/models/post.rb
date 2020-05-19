class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::History::Tracker
  include Mongoid::Attributes::Dynamic

  field :title, type: String
  field :body, type: String

  validates :title, :body, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
