class BancfinderController < ApplicationController
  def find
      @banc=BancLocation.new()
      @banc.n_rue=0
      @banc.adress="Unknow"
      @banc.code_postal=0000
      @banc.ville="Unknow"
      @banc=BancLocation.create()
      binding.pry
  end
end
