require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe Post do
    it "is valid with a bird, img_url, date_seen, city, state and field_notes" do
      post = Post.new(
      bird: "duck",
      img_url: "http://www.example.com",
      date_seen: "02/05/2014",
      city: "Washington",
      state: "DC",
      field_notes: "Sample text")
      expect(post).to be_valid
    end
  end
end
