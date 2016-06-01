# Add - require 'factory_girl_rails' - to spec_helper.rb
# Add - config.include FactoryGirl::Syntax::Methods - to configure block

FactoryGirl.define do
  factory :pin do
    name "My favorite pin"
    description "This should be interesting."
  end
  factory :user do
    email 'lance@example.com'
    password 'qawsedrf'
  end
end