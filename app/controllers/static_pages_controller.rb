class StaticPagesController < ApplicationController
  def index
    @cheque = Cheque.new
  end
end