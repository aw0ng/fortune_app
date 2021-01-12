class Api::ExamplePagesController < ApplicationController
  def fortunes_method
    @fortunes_array = ["You will heal quickly from this unfortunate illness.", "You will catch up and excel in bootcamp.", "You will become an awesome software engineer."]
    fortune = @fortunes_array.sample
    @message = "Your fortune is: #{fortune}"
    render "fortune.json.jb"
  end

  def lotto_method
    lotto = []
    num1 = rand(1..60)
    lotto << num1
    num2 = rand(1..60)
    lotto << num2
    num3 = rand(1..60)
    lotto << num3
    num4 = rand(1..60)
    lotto << num4
    num5 = rand(1..60)
    lotto << num5
    num6 = rand(1..60)
    lotto << num6
    @lottery = lotto
    render "lotto.json.jb"
  end
end
