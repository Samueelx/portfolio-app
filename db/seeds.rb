puts "🌱 Seeding data..."

Skill.create(name: "React", domain: "Frontend Development")
Skill.create(name: "Nextjs", domain: "Fullstack Development")
Skill.create(name: "Network design", domain: "Network Engineering")
Skill.create(name: "Network Programming", domain: "Network Enginnering")
Skill.create(name: "Rails Development", domain: "Backend Engineering")
Skill.create(name: "Go Development", domain: "Backend Engineering")
Skill.create(name: "Postgres DBMS", domain: "Database Admininstration")
Skill.create(name: "Vuejs", domain: "Frontend Development")
Skill.create(name: "Network Administration", domain: "Network Engineering")
Skill.create(name: "Pianist", domain: "Music")

User.create(username: "starboy", firstname: "Abel", lastname: "Weeknd", age: 29, password: '123456789')
User.create(username: "metro", firstname: "Metro", lastname: "Boomin", age: 27, password: '123456789')
User.create(username: "jon", firstname: "Jon", lastname: "Jones", age: 26, password: '123456789')

project_names = ["Tiny Go", "PDF processor", "LSP Client", "Heartless", "Out of Time", "LSP Server", "Porfolio App"]

User.all.each do |user|
    3.times do
        Project.create(project_name: project_names.sample, description: "Random stuff", link: "https://github.com", startedAt: Time.now, completedAt: Time.now, user_id: user.id, skill_id: rand(1..9))
    end
end

puts "🌱 Done Seeding!"