require "rails_helper"

RSpec.describe Book, type: :model do
  author = Author.new
  subject { Book.new(title: "Kindom of Magic", short_description: "Example", price: 20, author: author, isbn: "9781432868765") }

  it 'title should be present' do 
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'price should be present' do 
    puts subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'short_description should be present' do 
    puts subject.short_description = nil
    expect(subject).to_not be_valid
  end
  
  it 'short_description should be less or equal to 1000 characters' do 
    subject.short_description = 1001.times.map { |i| "a".to_s }.join
    expect(subject).to_not be_valid
  end

  it "should be valid" do 
    result = subject.save
    expect(result).to be(true)
  end

  it "could be a isbn of 10 digits " do 
    subject.isbn = "1617755885"
    expect(subject).to be_valid
  end

  it "should be a real isbn" do 
    subject.isbn = "1234567890"
    expect(subject).to_not be_valid
  end

  it "should full text search by title" do 
    subject.save
    nofind = Book.search_by_title("NONE").to_a
    expect(nofind.length).to be(0)
    find = Book.search_by_title("Magic").to_a
    expect(find.length).to be > 0
  end

end
