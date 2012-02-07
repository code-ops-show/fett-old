Factory.define :job do |job|
  job.sequence(:title) { |n| "Job #{n}" }
  job.description "Test Description"
  job.salary "20000 - 30000 Baht/m"
  job.location "Bangkok"
  job.association :employer
end

Factory.define :profile do |profile|
  profile.description "Profile Description"
  profile.association :employer
end

Factory.define :employer do |employer|
  employer.sequence(:name) { |n| "Test Employer #{n}" }
  employer.sequence(:email) { |n| "email#{n}@testemployer.com" }
  employer.password "secretsss"
  employer.association :profile
end

Factory.define :user do |user|
  user.sequence(:name) { |n| "Test User #{n}" }
  user.sequence(:email) { |n| "email#{n}@testuser.com" }
  user.type %w[Employee Employer]
  user.password "secretsss"
end
