class DigestionsController < ApplicationController
  def show
    @enzymes = Bio::RestrictionEnzyme.rebase.enzymes
  end

  def digest
    @enzymes = Bio::RestrictionEnzyme.rebase
    @sequence = Bio::Sequence::NA.new(params[:sequence])
    @enzyme_name = params[:enzyme]
    @enzyme = @enzymes[params[:enzyme]]
    @fragments = Bio::RestrictionEnzyme.cut(@sequence, @enzyme)

    if turbo_frame_request?
      render partial: 'digest'
    else
      warn 'What the hell?'
    end
  end
end
