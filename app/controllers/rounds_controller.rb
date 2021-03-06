class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :update, :destroy]

  # GET /rounds
  def index
    @rounds = Round.all

    render json: @rounds
  end

  # GET /rounds/1
  def show
    render json: @round
  end

  # POST /rounds
  def create
    @round = current_user.rounds.build(round_params)

    if @round.save
      render json: @round, status: :created, location: @round
    else
      render json: @round.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rounds/1
  def update
    if @round.update(round_params)
      render json: @round
    else
      render json: @round.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rounds/1
  def destroy
    @round.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def round_params
      params.require(:round).permit(:par, :score, :course_id, :card)
    end
end
