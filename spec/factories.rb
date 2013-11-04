require 'spec_helper'

FactoryGirl.define do
  factory :menu do
    name "test menu"
  end

  factory :menu_item do
    var "some shit"
    menu
  end

end