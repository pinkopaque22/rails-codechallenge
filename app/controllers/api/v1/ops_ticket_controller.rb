class Api::V1::OpsTicketController < ApplicationController
  def index
    @ops_tickets = OpsTickets.all
    render json: @ops_tickets
  end


  def create
    @ops_ticket = OpsTicket.create(check_params)
    if @ops_ticket.valid?
      render json: @ops_ticket
    else
      render json: {errors: @ops_ticket.errors.full_messages}
    end
  end


  private
  def check_params
    params.permit(:issue_category, :vehicle_id)
  end
end
