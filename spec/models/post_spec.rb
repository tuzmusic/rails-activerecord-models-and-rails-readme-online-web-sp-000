require 'rails_helper'

describe Post do
  it "can be created" do
    post = Post.create!(title:"a title", description:"some content")
    expect(post).to be_valid
  end

  it "has a summary" do
    post = Post.create!(title:"a title", description:"some content")
    expect(post.post_summary).to eq("a title - some content")
  end
end
