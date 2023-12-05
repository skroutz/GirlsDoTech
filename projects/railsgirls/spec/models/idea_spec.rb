require "rails_helper"

RSpec.describe Idea do
  it "has a name" do # yep, you can totally use 'it'
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    expect(idea.name).to eq("My Awesome Idea Name") # this is our expectation
  end

  it "has comments" do
    idea = Idea.create!(name: "My Awesome Idea Name")
    comment = Comment.create!(
      user_name: "My name",
      body: "My helpful comment",
      idea: idea # Link the comment to the idea
    )

    expect(comment.idea).to eq(idea)
  end
end
