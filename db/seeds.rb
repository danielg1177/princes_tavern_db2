# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
MenuItem.destroy_all

[{date: DateTime.new(2020, 6, 8), title: "Singles Night", start_time: "8:00", end_time: "12:00", description: "We guarntee a 90% chance youre gonna get laid", public: true, url: "https://images.unsplash.com/flagged/photo-1574319523332-4cadaa531506?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGJhciUyMHBhcnR5fGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{date: DateTime.new(2020, 2, 20), title:"Trivia Night", start_time:"7:00", end_time: "10:00", description:"A great way to spend your night and meet new people", public: true, url: "https://images.unsplash.com/photo-1570937943292-a574bd5bc722?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHJpdmlhfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{date: DateTime.new(2020, 4, 1), title: "Couples Night", start_time: "10:00", end_time: "1:00", description: "If youre not sad and alone it gets better, now you get 50% off drinks too", public: true, url: "https://images.unsplash.com/photo-1542326891-50b14105a80b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNvdXBsZSUyMGJhcnxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{date: DateTime.new(2020, 11, 11), title:"Bar Olympics", start_time:"9:00", end_time: "2:00", description:"A great night of bar competions like pool, darts and more. Winner gets free drinks for a night", public: true, url: "https://images.unsplash.com/photo-1566214999850-1698983935f3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFyJTIwZ2FtZXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"}
].each do |event|
  Event.create!(start_time: event[:start_time], end_time: event[:end_time], title: event[:title], description: event[:description], public: event[:public], url: event[:url], date: event[:date])
end


[{title: "Cheese Burger", category: "Mains", description: "A very well made cheeseburger", ingrediants: 'bread, meat, pickels, lettuce, fried egg', url: "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Home Fries", category: "Sides", description: "The crunchiest home fries out there", ingrediants: 'potatoes, salt, olive oil, special seasoning, fried egg', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Edomame", category: "Sides", description: "Fresh Edomame", ingrediants: 'edomame, salt', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Cheese Burger", category: "Mains", description: "A very well made cheeseburger", ingrediants: 'bread, meat, pickels, lettuce, fried egg', url: "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Home Fries", category: "Sides", description: "The crunchiest home fries out there", ingrediants: 'potatoes, salt, olive oil, special seasoning, fried egg', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Edomame", category: "Sides", description: "Fresh Edomame", ingrediants: 'edomame, salt', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Cheese Burger", category: "Mains", description: "A very well made cheeseburger", ingrediants: 'bread, meat, pickels, lettuce, fried egg', url: "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Home Fries", category: "Sides", description: "The crunchiest home fries out there", ingrediants: 'potatoes, salt, olive oil, special seasoning, fried egg', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Edomame", category: "Sides", description: "Fresh Edomame", ingrediants: 'edomame, salt', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Cheese Burger", category: "Mains", description: "A very well made cheeseburger", ingrediants: 'bread, meat, pickels, lettuce, fried egg', url: "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Home Fries", category: "Sides", description: "The crunchiest home fries out there", ingrediants: 'potatoes, salt, olive oil, special seasoning, fried egg', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Edomame", category: "Sides", description: "Fresh Edomame", ingrediants: 'edomame, salt', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Cheese Burger", category: "Mains", description: "A very well made cheeseburger", ingrediants: 'bread, meat, pickels, lettuce, fried egg', url: "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Home Fries", category: "Sides", description: "The crunchiest home fries out there", ingrediants: 'potatoes, salt, olive oil, special seasoning, fried egg', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
{title: "Edomame", category: "Sides", description: "Fresh Edomame", ingrediants: 'edomame, salt', url: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"}
].each do |item|
  MenuItem.create!(title: item[:title], category: item[:category], ingrediants: item[:ingrediants], url: item[:url], description: item[:description])
end
