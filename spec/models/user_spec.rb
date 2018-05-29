require 'rails_helper'

RSpec.describe User, type: :model do



  describe "validation" do

    before(:each) do
      @user = User.new(password: "aaa", password_confirmation: "aaa", first_name: "a", last_name: "a", email:"a@a.a")
    end

    it "password and password confirmation matches" do
      user1 = User.new(password: "2", password_confirmation: "2", first_name: "2", last_name: "2", email:"2@2.2")
      user2 = User.new(password: "3", password_confirmation: "2", first_name: "2", last_name: "2", email:"2@2.2")
      expect(user1.password).to be == user1.password_confirmation
      expect(user2.password).to_not be == user2.password_confirmation
    end

    it "password should have minimum 5 characters" do
      user1 = User.new(password: "12345", password_confirmation: "2", first_name: "2", last_name: "2", email:"2@2.2")
      expect(user1.password.length).to be >= 5
    end


    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }




  end


  # describe '.authenticate_with_credentials' do
  #   it "authenticated user should be valid" do
  #     user = User.new(password: "aaa", password_confirmation: "aaa", first_name: "a", last_name: "a", email:"a@a.a")
  #     user.save
  #     user1 = User.new(password: "aaa", password_confirmation: "aaa", first_name: "a", last_name: "a", email:"aa@a.a")
  #     user1.save
  #     expect(user1).to be_valid
  #   end
  # end

end
