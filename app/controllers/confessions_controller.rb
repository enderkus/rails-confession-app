class ConfessionsController < ApplicationController
  before_action :confession_set, only: %i[ show ]
  def index
    @slogan = 'Welcome to Secret Confess'
    @page_description = 'You can write confess as a anonymous be relax, trust we and write it :)'
    @confessions = Confession.all
  end
  def new
    @confession = Confession.new
  end

  def create
    @confession = Confession.new(confession_params)
    respond_to do |format|
      if @confession.save
        format.html {redirect_to confession_url(@confession), notice: "Confession has been created."}
      else
        format.html {render :new, status: :unprocessable_entity}
      end
    end
  end

  def show
    @confession.increment!(:views)
  end

  private

  def confession_params
    params.require(:confession).permit(:title,:confession,:gender)
  end

  def confession_set
    @confession = Confession.find(params[:id])
  end
end
