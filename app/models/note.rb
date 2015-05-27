# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Note < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :comments

  validates :title, :content, :category_id, :created_at, presence: true

	default_scope -> { order(created_at: :desc) }
end
