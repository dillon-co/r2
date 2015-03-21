class Translator < ActiveRecord::Base
  belongs_to :user

  
  def translator_key
    t_key = Hash.new
    ('a'..'z').each do |k|
      t_key[k] = MusicTheory::Note.new(frequency: "#{k}".ord * 5, duration: 0.1, distortion: true)
    end   
  end
  
  
  def translated_audio(input)
    input.split
  end

  
  def origional_text
  end   
end
