class CodonsController < ApplicationController
  def show
    pp params
  end

  def convert
    @sequence = Bio::Sequence::NA.new(params[:sequence])
    @codon_table = params[:codon_table]&.to_i || 1

    if turbo_frame_request?
      render partial: 'convert'
    else
      warn 'What the hell?'
    end
  end

  def convert_x
    @codons = params[:sequence].upcase.gsub(/[^ATGC]/, '').scan(/.{3}/)
    @aminos = @codons.map { |c| Codons::MAP[c] }
    @stop_codon = Codons::ACIDS[:stp]

    if turbo_frame_request?
      render partial: 'convert'
    else
      warn 'What the hell?'
    end
  end
end
