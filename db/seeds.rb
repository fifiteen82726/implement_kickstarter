# name 標題 
# photo 圖片
# 集資金額
# goal目標金額
# 集資進度百分比
# 贊助人數
# state 集資狀態(a string of 'live', 'successful', 'failed', 'suspended', 'deleted', or 'canceled')


Project.destroy_all
Category.destroy_all


client = Kickscraper.client

# Create 分類
category = client.categories

category.each do |category|
	Category.create(name: category.name)
end




#Create Project
#client = Kickscraper.client

# get latest
c = client.recently_launched_projects
c.each do |project|

cate = Category.find_by_name(project.category.name)


# project.category
p = Project.create(kickstart_id: project.id, name: project.name, photo_med: project.photo["med"],
	pledged: project.pledged, goal: project.goal, backers_count: project.backers_count,
	state: project.state, deadline: project.deadline)

cate.projects << p 	
end


#再抓一百個

5.times do |i|
	c = client.load_more_projects if client.more_projects_available?
	c.each do |project|
		Project.create(kickstart_id: project.id, name: project.name, photo_med: project.photo["med"],
			pledged: project.pledged, goal: project.goal, backers_count: project.backers_count,
			state: project.state, deadline: project.deadline)	
	end
end








# p1  = Project.first
# p2 = Project.second





