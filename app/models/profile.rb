class Profile < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name, presence: { message: 'を入力してください。' }
  validates :history, presence: { message: 'を入力してください' }
  validates :purpose, presence:{ message: 'を入力してください' }
  # with_options presence: true do
  #   validates :name ,{ message: '名前を入力してください' }
  #   validates :history
  #   validates :purpose
  #   validates :image
  # end

end