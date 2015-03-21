class Translator < ActiveRecord::Base
  belongs_to :user

  
  def translator_key
    @t_key = Hash.new
    ('0'..'z').each do |k|
      @t_key[k] = MusicTheory::Note.new(frequency: "#{k}".ord * 5, duration: 0.1, distortion: true)
    end   
  end
  
  
  def translated_audio(input)
    input.split('').each { |x| @t_key[x].play }
  end

  def translation
    translator_key
    translated_audio(original_text2)
  end  

  private 

  def word_params
    params.require(:translators).permit(:original_text)

end
