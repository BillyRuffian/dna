class ComplementsController < ApplicationController
  def show
  end

  def sequence
    @sequence = Bio::Sequence::NA.new(params[:sequence])
    @forward_complement = @sequence.forward_complement
    @reverse_complement = @sequence.reverse_complement
    @composition = @sequence.composition

    if turbo_frame_request?
      render partial: 'sequence'
    else
      warn 'What the hell?'
    end
  end
end
