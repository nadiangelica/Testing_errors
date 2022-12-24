require 'class_Present_testing_error.rb'

RSpec.describe Present do  
    it "Wraps and unwraps a value" do
        present = Present.new
        present.wrap(6)
       expect(present.unwrap).to eq 6
      end


      it "fails if unwrap before wrapping first" do
        present = Present.new
        expect {present.unwrap}.to raise_error "No contents have been wrapped."
      end


   it "fails when content is alreay wrapped " do
    present= Present.new
    present.wrap(6)
    expect {present.wrap(7) }.to raise_error "A contents has already been wrapped."
  end
end