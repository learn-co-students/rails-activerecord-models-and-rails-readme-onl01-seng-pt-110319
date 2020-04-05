require 'rails_helper'

describe Post do
    it 'can be created' do
        post = Post.create!(title: "First Post", description: "Look at my first post")
        expect(post).to be_valid
    end

    it 'has a summary' do
        post = Post.create!(title: "Title", description: "Description")
        expect(post.post_summary).to eq("Title - Description")
    end
end