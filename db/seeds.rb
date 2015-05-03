User.create!(name:  "User Admin",
             email: "admin@example.com",
             password:              "adminadmin",
             password_confirmation: "adminadmin",
             user_role: "Admin")

User.create!(name:  "User Editor",
             email: "editor@example.com",
             password:              "editoreditor",
             password_confirmation: "editoreditor",
             user_role: "Editor")
             
User.create!(name:  "Elaine",
             email: "elaine@example.com",
             password:              "studentempowerment",
             password_confirmation: "studentempowerment",
             user_role: "Member")
