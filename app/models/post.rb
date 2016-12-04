class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, :length => { :maximum => 150, :message => "Must be 150 characters or less"} # yaprs are capped at 150 chars.
  default_scope -> { order(created_at: :desc) } # newest yarps / posts first
end
