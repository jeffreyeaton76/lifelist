require 'rails_helper'

RSpec.describe Comment, :type => :model do
  describe Comment do
    it "is valid with a body and post_id" do
      comment = Comment.new(
      body: "sample text",
      post_id: 1)
      expect(comment).to be_valid
    end
  end
end
