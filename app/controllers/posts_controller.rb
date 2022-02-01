# class AuthorsController < ActionController::API

# def create
#     post = Post.create!(post_params)
#     render json: post, status: :accepted
#     # the 2 lines below were replaced by the private method 
#   # rescue ActiveRecord::RecordInvalid => invalid
#   #   render json:{error: invalid.record.errors}, status: :unprocessable_entity
#   end

#   #   if author.valid?
#   #   render json: author, status: :accepted
#   #   else 
#   #     render json: author.erros.full_messages
#   # end

#   private
  
#   def render_unprocessable_entity(invalid)
#     render json:{error: invalid.record.errors}, status: :unprocessable_entity

#   end


# end