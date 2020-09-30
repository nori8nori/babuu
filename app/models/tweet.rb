class Tweet < ApplicationRecord
  has_many_attached :images
  belongs_to :user

  validates :content, presence: { message: 'を入力してください。' }

  # with_options presence: true do
  #   validates :content
  # end

end
