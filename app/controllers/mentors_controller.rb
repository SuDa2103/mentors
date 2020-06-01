class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)
    if @mentor.save
      redirect_to @mentor
    else
      render :new
    end
  end

  def edit
    @mentor = Mentor.find(params[:id])
  end

  def update
    @mentor = Mentor.find(params[:id])
    @mentor.update(mentor_params)
    if @mentor.save
      redirect_to @mentor
    else
      render :edit
    end
  end

  def destroy
    @mentor = Mentor.find(params[:id])
    @mentor.destroy
    redirect_to root_path
  end

  private

  def mentor_params
    params.require(:mentor).permit(:name, :bio)
  end
end
