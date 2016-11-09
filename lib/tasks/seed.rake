# frozen_string_literal: true

desc 'Populate database with initial data'
task seed: :environment do
  Rake::Task['seed:users'].invoke
end
