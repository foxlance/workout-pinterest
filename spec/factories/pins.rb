# Add - require 'factory_girl_rails' - to spec_helper.rb
# Add - config.include FactoryGirl::Syntax::Methods - to configure block

FactoryGirl.define do
  factory :pins do
    title "My favorite pin"
    body "This should be interesting."
  end
end