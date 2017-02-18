# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
User.transaction do
  %w(lauren maddie jeff max alec kate brian gary anna).each do |name|
    email = "#{name}@#{name}.com"
    next if User.exists? email: email
    User.create(email: email,
                password: 'abc123',
                password_confirmation: 'abc123')
  end
end

Profile.transaction do
  %w(lauren maddie jeff max alec kate brian gary anna).each do |name|
    email = "#{name}@#{name}.com"
    user = User.where(email: email).first
    profile_params = {
      user_id: user.id,
      username: name,
      favorite_genre: 'metal',
      favorite_band: 'the jackson 4'
    }
    next if Profile.exists? profile_params
    Profile.create! profile_params
  end
end

# Workout.transaction do
#   %w(2kBenchmark 3668Benchmark 5kSS 10kSS 2500SS).each do |name|
#     workout_params = {
#       name: name
#     }
#     next if Workout.exists? workout_params
#     Workout.create! workout_params
#   end
# end
