class CodonsController < ApplicationController
  def show
    pp params
  end

  def convert
    @codons = params[:sequence].upcase.gsub(/[^ATGC]/, '').scan(/.{3}/).map { |c| Codons::MAP[c] }

    if turbo_frame_request?
      render partial: 'convert'
    else
      warn 'What the hell?'
    end
  end
end
