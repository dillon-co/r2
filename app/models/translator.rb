class Translator < ActiveRecord::Base
  belongs_to :user

  
  def translator_key
    t_key = Hash.new
    (a..z).each do |k|
      t_key[k] = [MusicThoery::Note.new(frequency: "#{k}".ord * 5]
    end   
  end
  
  
  def translated_audio(input)
  end

  
  def origional_text
  end   
end
