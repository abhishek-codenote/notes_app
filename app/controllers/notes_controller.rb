class NotesController < ApplicationController
 # before_action :set_notes      #dont put space between : and set_notes
  def index
    @notes =Note.all
  end
  def show
    note_id = params[:id].to_i
    @current_note = Note.find(note_id)
  end
  def create
    note_content = params[:content]
    new_note = Note.new
    new_note.content = note_content
    new_note.save
    redirect_to '/'
  end
  # private
  # def set_notes
  #   @notes = [ "first note item" , "second note item"]
  # end
end
# two set of codes are commented because the codes were useful when the notes data was fixed and in array format now we are moving ahead with dynamic data
