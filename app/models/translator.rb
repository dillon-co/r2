class Translator < ActiveRecord::Base
  belongs_to :user

  
  def translator_key
  end
  
  
  def translated_audio(input)
  end

  
  def origional_text
  end   
end
