require "rails_helper"

RSpec.describe Author, type: :model do
  subject { Author.new(first_name: "Juan", last_name: "Lopez") }

  it "should have first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
  
  it "should have last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
  
  it "should have have full name" do
    expect(subject.name).to eq("Juan" + " " + "Lopez")
  end
end
