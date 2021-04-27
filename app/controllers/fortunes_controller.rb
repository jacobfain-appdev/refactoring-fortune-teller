class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch("the_sign")
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@sign.to_sym)  
    @horoscope = this_zodiac.fetch(:horoscope)
    
    render({:template => "fortunes_templates/horoscope.html.erb"})  
  end
end