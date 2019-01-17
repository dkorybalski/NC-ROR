class CitationsController < ApplicationController

  def index
      @citations = Citation.all
  end

  def show
    @citation = Citation.find(params[:id])
  end

  def new
    @citation = Citation.new
  end

  def edit
    @citation = Citation.find(params[:id])
  end

  def create
    @citation = Citation.new(citation_params)

    if @citation.save
      redirect_to @citation
    else
      render 'new'
    end
  end

  def update
    @citation = Citation.find(params[:id])

    if @citation.update(citation_params)
      redirect_to @citation
    else
      render 'edit'
    end
  end

  def destroy
    @citation = Citation.find(params[:id])
    @citation.destroy

    redirect_to citations_path
  end

  private
  def citation_params
    params.require(:citation).permit(:nick, :text)
  end
end
