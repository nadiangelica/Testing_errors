require 'password_checker.rb'
RSpec.describe PasswordChecker do
 it "Password is valid" do
    passwordChecker = PasswordChecker.new
    expect(passwordChecker.check("passwordOne")).to eq true
 end

 it "fails if password is equal or smaller than 8" do
    passwordChecker = PasswordChecker.new
    expect {passwordChecker.check("pass")}.to raise_error "Invalid password, must be 8+ characters."
 end
end
