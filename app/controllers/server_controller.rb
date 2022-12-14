# frozen_string_literal: true

class ServerController < ApplicationController
  before_action :set_parameter, only: :result
  def index; end

  def result
    @seq1, @seq2, @seq3 = ServerHelper.result_array(@number)
    @xml_arr = { seq: @seq1, subseq: @seq2, maxseq: @seq3 }
    respond_to do |format|
      format.html
      format.xml { render xml: @xml_arr }
    end
  end

  private

  def set_parameter
    @number = params[:num].scan(/\d+/).map(&:to_i)
  end
end
