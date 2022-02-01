# class AuthorsController < ActionController::API
# rescue_from ActiveRecord::RecordInvalid, with: :ender_unprocessable_entity

#   def create
#     author = Author.create!(author_params)
#     render json: author, status: :accepted
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