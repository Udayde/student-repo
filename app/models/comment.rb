class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true

    # scope :post, -> { where(:commentable_type => "Post")}
    # # Ex:- scope :active, -> {where(:active => true)}
    # def post
    #     Post.find_by(id: commentable_id)
    # end
end
