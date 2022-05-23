class Book < ApplicationRecord
  # TODAY = Time.now.midnight
  # scope :today_search, -> {where(created_at: TODAY..TODAY.tomorrow)}

  # 引数を利用する
  # scope :title_search, ->(title) {where(title: title)}

  # バリデーションヘルパー: format
  validates :title, :description, presence: true
  validates :title, format: { with: /\A[a-zA-Z]+\z/, message: "は英文字で記述してください"}
  # length
  validates :title, length: { in: 8..12,
    too_long: "タイトルは最大12桁です",
    too_short: "タイトルは最小8桁です"
  }
  # numericality
  validates :price, numericality: { only_integer: true }
  validates :number, numericality: { only_integer: true }

end
