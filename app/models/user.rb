class User < ApplicationRecord
  # before_create :ensure_has_name
  # # before_create do
  # #   self.name = 'Taro' if name.blank?
  # # end
  # before_save do
  #   puts '1番目に呼ばれたコールバック'
  # end
  # before_save do
  #   puts '2番目に呼ばれたコールバック'
  # end

  # after_initialize do |user|
  #   p user
  #   puts "オブジェクトを生成しました！"
  #   user.name = "Taro"
  # end

  # private
  # def ensure_has_name
  #   puts "nameの値をTaroに設定します！"
  #   self.name = 'Taro' if name.blank?
  # end
  before_create CreateAgeAtCallback.new
end
