class MyError < StandardError
  def self.code
    404
  end

  def self.message
    'エラー　そんなページ無いで'
  end
end
