class Book < ApplicationRecord
  # TODAY = Time.now.midnight
  # scope :today_search, -> {where(created_at: TODAY..TODAY.tomorrow)}

  # 引数を利用する
  # scope :title_search, ->(title) {where(title: title)}

  # バリデーションヘルパー: format
  validates :title, :description, presence: true
  validates :title, format: { with: /\A[a-zA-Z]+\z/, message: "は英文字で記述してください"}

end
