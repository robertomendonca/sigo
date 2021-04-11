require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /sign_in" do
    #User.create!(:email => "email@testing.com", :password=> "password")
    it "signs user in and out" do
      #user = User.create!(email: "user@example.org", password: "very-secret", auditor_role: true)
      user = User.find_by_email("user@example.org")

      
      sign_in user
      get normas_path
      expect(controller.current_user).to eq(user) # add gem 'rails-controller-testing' to your Gemfile first.
      
      sign_out user
      get normas_path
      expect(response).not_to render_template(:index)
    end


  end
end
