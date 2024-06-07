class DigestionsController < ApplicationController
  def show
    @enzymes = Bio::RestrictionEnzyme.rebase.enzymes
  end
end
