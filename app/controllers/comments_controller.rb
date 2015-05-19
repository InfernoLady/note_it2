class CommentsController < ApplicationController
before_action :authenticate_user!
	def create
		@note = Note.find(params[:note_id])
		@comment = @note.comments.build(params[:comment].permit(:content))
		@comment.user_id = current_user.id 
		if @comment.save
			redirect_to note_path(@note)
		end
	end

	def destroy
		@note = Note.find(params[:note_id])
		@comment = @note.comments.find(params[:id])
		@comment.destroy

		redirect_to note_path(@note)
	end
end