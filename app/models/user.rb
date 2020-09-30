class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
  end

  #ユーザー情報が消えたら紐づいているプロフィールも削除という意
  #has_one :profile, dependent: :destroy
  has_one :profile
  has_one :tweet
end
