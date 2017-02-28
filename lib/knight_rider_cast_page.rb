template_letter = File.read("form_letter.erb") #read contents of our form_letter.erb
erb_template = ERB.new template_letter #create erb_template which is a new instance of ERB that is passeed the read contents of template_letter

class KnightRiderCastPage
  attr_reader :letter
  
  def initialize(letter)
    @letter = File.read(letter)
  end

  def create_erb_template
    ERB.new(letter)
  end
end
