class VotersController < ApplicationController
  before_action :set_voter, only: [:show, :edit, :update, :destroy]
  def index
    @voters = Voter.all
  end

  def show
  end

  def new
    @voter = Voter.new
  end

  def create
    @voters = Voter.all
    @voter = Voter.create(voter_params)
  end

  def edit
  end

  def update
    @voters = Voter.all

    @voter.update_attributes(voter_params)
  end

  # to delete via modal
  def delete
    @voter = Voter.find(params[:voter_id])
  end

  def destroy
    @voters = Voter.all
    @voter.destroy
  end

  private

    def set_voter
      @voter = Voter.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def voter_params
      params.require(:voter).permit(:first_name, :last_name, :address, :city, :state, :zip)
    end
end
