namespace :seed do
  desc 'Populate database with users'
  task users: :environment do
    users = YAML.load_file Rails.root.join('lib', 'tasks', 'seed', 'users.yml')

    users.each do |user|
      User.create user
    end
  end
end
