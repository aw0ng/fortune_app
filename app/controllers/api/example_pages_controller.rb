class Api::ExamplePagesController < ApplicationController
  def fortunes_method
    @fortunes_array = ["You will heal quickly from this unfortunate illness.", "You will catch up and excel in bootcamp.", "You will become an awesome software engineer."]
    fortune = @fortunes_array.sample
    @message = "Your fortune is: #{fortune}"
    render "fortune.json.jb"
  end

  def lotto_method
    lotto = []
    index = 0
    while index < 6
      @lotto << rand(1..60)
      index + = 1 
    end
    render "lotto.json.jb"
  end
end
