require 'rails_helper'

RSpec.describe "Normas", type: :request do
  describe "GET List of normas" do
   # user = User.create!(email: "user@example.org", password: "very-secret", auditor_role: true)

   it "should return a norma created" do
      norma = Norma.create!(descricao: "Test Norma", idioma: "portugues")
      user = User.find_by_email("user@example.org")

      sign_in user
      get normas_path
      expect(response).to have_http_status(200)
      expect(response).to have_http_status(:success)
  end

  end
end
