require 'kickscraper'

Kickscraper.configure do |config|
    config.email = 'fifiteen82726@gmail.com'
    config.password = '2wsx1qaz'
end

client = Kickscraper.client

#c.recently_launched_projects






# client = Kickscraper.client
# puts " A | C |"
# puts "------------------------"
# client.user.backed_projects.each {|x| 
#     print (x.active? ? ' X |' : '   |')
#     print (x.successful? ? ' X | ' : '   | ')
#     puts x.name
# }



# [<Project: 'Ernie the Elf - An Advent Book'>,
#  <Project: 'Illustrated Science Book on Evolutionary Biology'>,
#  <Project: 'Mia'>,
#  <Project: 'RB-Connect Ethernet for Apple iOS Devices'>,
#  <Project: 'Aksarben Escape Rooms'>,
#  <Project: 'Tiny Treasures - EP'>,
#  <Project: 'Cute Little Bastards'>,
#  <Project: 'The English Edition of "People from IKEA”'>,
#  <Project: 'Perönliche & Individuell gestickte Geschenke'>,
#  <Project: 'House Jungle | Illustrated Guide to Caring for Houseplants'>,
#  <Project: 'Food that No One Died For, a Vegan cookbook'>,
#  <Project: 'The Murder Mayor Music Video Animation Project'>,
#  <Project: 'DIY Nail Polish Kits'>,
#  <Project: 'Morium: The Graphic Novel'>,
#  <Project: 'PHARISEES: The Party Game'>,
#  <Project: 'Human Music'>,
#  <Project: 'Clyde'>,
#  <Project: 'Rare Book Detective - The Secret Life of Watermarks'>,
#  <Project: 'Liquid Fire Racing'>,
#  <Project: 'Self Publish a Book on Beauty Spots & Landscape Photography'>]