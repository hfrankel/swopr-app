1..50.times do |_x|
  user_params = {
    password: Faker::Internet.password(min_length: 10, max_length: 20),
    given_names: Faker::Name.name,
    last_name: Faker::Name.last_name
  }
  user_params[:email] = Faker::Internet.email(name: user_params[:given_names]).to_s
  user = User.new(user_params)
  puts 'new user' if user.save!

  project_params = {
    title: Faker::Company.name,
    description: Faker::Company.catch_phrase,
    user_id: User.all.sample.id
  }
  project = Project.new(project_params)
  puts 'new project' if project.save!

  project_collab_params = {
    user_id: User.all.sample.id,
    project_id: Project.all.sample.id
  }
  project_collab = ProjectCollaborator.new(project_collab_params)
  puts 'new collaborator' if project_collab.save!
end
