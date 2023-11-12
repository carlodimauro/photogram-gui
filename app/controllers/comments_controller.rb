class CommentsController < ApplicationController

def add_comment
  new_c = Comment.new
  new_c.author_id = params.fetch("input_author_id")
  new_c.body = params.fetch("input_comment")
  new_c.photo_id = params.fetch("input_photo_id")
  new_c.save

  redirect_to("/photos/#{new_c.photo_id}")
end

end
