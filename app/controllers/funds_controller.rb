class FundsController < ApplicationController
  before_action :set_fund, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  # GET /funds
  # GET /funds.json
  def index
    @funds = Fund.all
  end

  # GET /funds/1
  # GET /funds/1.json
  def show
  end

  # GET /funds/new
  def new
    @fund = Fund.new
    @uid = params[:u_id]
    @pid = params[:f_id]
    @pcost = params[:p_cost]

  end

  # GET /funds/1/edit
  def edit
  end

  # POST /funds
  # POST /funds.json
  def create
    @uid = params[:u_id]
    @fund = Fund.new(fund_params)

    respond_to do |format|

      if @fund.save
        FundMailer.fund_confirmation(@fund, current_user ).deliver

        format.html { redirect_to "/projects/"+@fund.project_id.to_s, notice: 'Confirm Fund In Email.' }
        format.json { render :show, status: :created, location: @fund }
      else
        format.html { render :new }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  def confirm_mail
    @pid = params[:f_id]
    fund = Fund.find_by_confirm_token(params[:id])
    if fund
      fund.mail_activate
      redirect_to '/',notice: 'Fund Succesfully Confirmed.'


    else
      redirect_to '/users'
    end
    end

  # PATCH/PUT /funds/1
  # PATCH/PUT /funds/1.json
  def update
    respond_to do |format|
      if @fund.update(fund_params)
        format.html { redirect_to @fund, notice: 'Fund was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund }
      else
        format.html { render :edit }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funds/1
  # DELETE /funds/1.json
  def destroy
    @fund.destroy
    respond_to do |format|
      format.html { redirect_to funds_url, notice: 'Fund was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund
      @fund = Fund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_params
      params.require(:fund).permit( :user_id, :project_id, :cost)
    end
end
