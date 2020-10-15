class Api::V1::RulesController < Api::V1::BaseController
  before_action :set_rule, only: [:show]

  def index
    @rules = Rule.all
  end

  def show
  end

  def random
    @rule = Rule.sample
  end

  private

  def set_rule
    @rule = Rule.find(params[:id])
  end
end
