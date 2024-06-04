class CodonsController < ApplicationController
  def show
    pp params
  end

  def convert
    @sequence = Bio::Sequence::NA.new(params[:sequence])
    @codon_table = params[:codon_table]&.to_i || 1
    @aminos = @sequence.translate(1, @codon_table)

    if turbo_frame_request?
      render partial: 'convert'
    else
      warn 'What the hell?'
    end
  end
end
