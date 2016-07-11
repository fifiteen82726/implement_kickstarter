# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# name 標題 
# photo 圖片
# 集資金額
# goal目標金額
# 集資進度百分比
# 贊助人數
# state 集資狀態(a string of 'live', 'successful', 'failed', 'suspended', 'deleted', or 'canceled')

# name photo   		goal     
# create_table "projects", force: :cascade do |t|
#     t.integer  "kickstart_id"
#     t.string   "name"
#     t.string   "photo_med"
#     t.float    "pledged"
#     t.float    "goal"
#     t.integer  "backers_count"
#     t.string   "state"
#     t.datetime "deadline"
#     t.datetime "created_at",    null: false
#     t.datetime "updated_at",    null: false
#   end
Project.destroy_all
Category.destroy_all




client = Kickscraper.client
c = client.recently_launched_projects
c.each do |project|
Project.create(kickstart_id: project.id, name: project.name, photo_med: project.photo["med"],
				pledged: project.pledged, goal: project.goal, backers_count: project.backers_count,
				state: project.state, deadline: project.deadline)	
end

# p1  = Project.first
# p2 = Project.second


category = client.categories

category.each do |category|
	Category.create(name: category.name)
	end




