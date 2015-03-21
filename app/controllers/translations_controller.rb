class TranslationsController < ApplicationController
  
  def index
  end

  def show
  end

  def new
    @translator = Translation.new
  end

  def create
    @translator = Translation.new(word_params)
    if @translator.save
      @translator.translation(@translator.original_text)
      redirect_to @translator
    else
      render :new
    end
  end   

  def destroy
  end

  private
  def word_params
    params.require(:translation).permit(:original_text)
  end  

end
