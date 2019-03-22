require 'rails_helper'

RSpec.describe User, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

 before(:each) do 
    @user = User.create(first_name: "John", last_name: "Doe", email: "martinclope@yopmail.com", password: "thplastreet")
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end
end

   describe "#first_name" do
      it "should not be valid without first_name" do
        bad_user = User.create(last_name: "Doe")
        expect(bad_user).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_user.errors.include?(:first_name)).to eq(true)
      end
    end


 describe "#last_name" do
      it "should not be valid without last_name" do
        bad_user = User.create(first_name: "John")
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:last_name)).to eq(true)
      end
    end

    describe "#email" do
      it "should not be valid without email" do
        bad_user = User.create(first_name: "John", last_name: "Doe")
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:email)).to eq(true)
      end
    end


    describe "#email" do
      it "should at sign" do
       bad_user = User.create(email: "martinclopeyopmail.com")
     expect(bad_user).not_to be_valid
     expect(bad_user.errors.include?(to_s)).to eq(false)
     end
   end


end
