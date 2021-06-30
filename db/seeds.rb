Student.create!(first_name: "Bob", last_name: "Ross", email: "bross@test.com", password: "password", phone_number: "1-800-BOB-ROSS",
                bio: "I am Bob Ross, just a happy little accident!", linkedin: "linkedin.com/bobross", twitter_handle: "like_a_bross",
                website: "bobross.com", resume_url: "drive.google.com/bobross-resume", github: "github.com/bobross", photo: "bross.jpg")

Student.create!(first_name: "Ran", last_name: "Rod", email: "RR@test.com", password: "password", phone_number: "1-900-RAN-RODD",
                bio: "I am Ran, kinda cool, eh!?", linkedin: "linkedin.com/RanRod", twitter_handle: "like_a_brod",
                website: "Ranrod.com", resume_url: "drive.google.com/ranrod-resume", github: "github.com/ranrod", photo: "ranrod.jpg")

Experience.create!(student_id: "1", start_date: "1/12/2010", end_date: "9/10/2010", job_title: "Barista", company_name: "Starbucks", details: "Made lots of fraps.")
Experience.create!(student_id: "2", start_date: "3/2/2020", end_date: "4/1/2020", job_title: "Taxi Driver", company_name: "Yellow Cab", details: "Drove people around town.")

Education.create!(student_id: "1", start_date: "1/12/2015", end_date: "9/10/2018", degree: "BA Art History", university: "Michigan State University", details: "Got a degree in Art History.")
Education.create!(student_id: "2", start_date: "10/1/2018", end_date: "4/15/2019", degree: "HVAC Certification", university: "Environmental Technical Institute", details: "Certificate in heating, ventilatoin, air conditioning and refrigeration.")

Skill.create!(student_id: "1", skill: "Painting")
Skill.create!(student_id: "2", skill: "HTML")

Project.create!(student_id: "1", name: "Rummy", description: "Card game", url: "Rummy.com", screenshot: "rummy.jpg")
Project.create!(student_id: "2", name: "Pinball", description: "Miniball game", url: "pinballgame.com", screenshot: "pinball.jpg")
