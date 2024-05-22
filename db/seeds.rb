# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 用于在开发过程中向数据库中添加初始数据或者测试数据。

def community_name 
  %w[CSDN 豆瓣 天涯 猫扑 RubyChina].sample
end

def keyword 
  %w[Ruby rails Python 汽车 爬虫].sample
end

67.times do 
  WebPage.create!(
    title: community_name,
    day:"2023-#{rand(1..10)}-#{rand(1..30)}",
    note:"#{community_name}已为您找到关于#{keyword}相关内容，包含#{keyword}相关文档代码介绍，相关视频....",
    from:community_name,
    url:" https://t.weixue100.com"
  )
end