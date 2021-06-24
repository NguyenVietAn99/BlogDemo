class Relationship < ApplicationRecord
	belongs_to :follower, class_name: "User"
	belongs_to :blog, class_name: "Blog"

	validates :follower_id, presence: true
	validates :blog_id, presence: true
end
