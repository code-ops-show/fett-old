FactoryGirl.define do
  factory :job do |job|
    job.sequence(:title) { |n| "Job #{n}" }
    job.description "Test Description"
    job.salary "20000 - 30000 Baht/m"
    job.location "Bangkok"
    job.association :employer
  end
end

FactoryGirl.define do
  factory :profile do |profile|
    profile.description "Profile Description"
    profile.association :employer
  end
end

FactoryGirl.define do
  factory :employer do |employer|
    employer.sequence(:email) { |n| "email#{n}@testemployer.com" }
    employer.password "secretsss"
  end
end


FactoryGirl.define do
  factory :employee do |employee|
    employee.sequence(:email) { |n| "email#{n}@testemployee.com" }
    employee.password "secretsss"
  end
end


FactoryGirl.define do 
  factory :user do |user|
    user.sequence(:email) { |n| "email#{n}@testuser.com" }
    user.type %w[Employee Employer]
    user.password "secretsss"
  end
end
