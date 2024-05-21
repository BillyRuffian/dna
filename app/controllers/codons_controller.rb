class CodonsController < ApplicationController
  def show
    pp params
  end

  def convert
    if turbo_frame_request?
      render partial: 'convert'
    else
      warn 'What the hell?'
    end
  end
end
