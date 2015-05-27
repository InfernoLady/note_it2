class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_note, only: [:show, :edit, :update, :destroy]


	def index
    @notes = Note.where(user_id: current_user)
    @notes_by_date = @notes.group_by(&:created_at)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
	end

	def show
	end

	def new
		@note= current_user.notes.build
	end

	def create
		@note= current_user.notes.build(note_params)
		
		if @note.save
			redirect_to @note
		else
			render 'new'
		end

	end

	def edit
	end

	def update
		if @note.update(note_params)
			redirect_to @note
		else
			render 'edit'
		end
	end

	def destroy
		@note.destroy
		logger.warn("====#{@note}")
     	redirect_to notes_path, notice: 'Successfully deleted'
     end


	private
		def find_note
			@note = Note.find(params[:id])
		end
	
		def note_params
			params.require(:note).permit(:title, :content, :created_at, :category_id)
		end


end
