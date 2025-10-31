# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

# Listを3つ作成
3.times do |i|
  list = List.create!(name: "リスト#{i + 1}")

  # 各Listに対してTodoを3つ作成
  3.times do |j|
    list.todos.create!(name: "Todo_#{j + 1}")
  end
end
