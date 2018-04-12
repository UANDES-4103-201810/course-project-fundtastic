class UserPromisesController < ApplicationController
  before_action :set_user_promise, only: [:show, :edit, :update, :destroy]

  # GET /user_promises
  # GET /user_promises.json
  def index
    @user_promises = UserPromise.all
  end

  # GET /user_promises/1
  # GET /user_promises/1.json
  def show
  end

  # GET /user_promises/new
  def new
    @user_promise = UserPromise.new
  end

  # GET /user_promises/1/edit
  def edit
  end

  # POST /user_promises
  # POST /user_promises.json
  def create
    @user_promise = UserPromise.new(user_promise_params)

    respond_to do |format|
      if @user_promise.save
        format.html { redirect_to @user_promise, notice: 'User promise was successfully created.' }
        format.json { render :show, status: :created, location: @user_promise }
      else
        format.html { render :new }
        format.json { render json: @user_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_promises/1
  # PATCH/PUT /user_promises/1.json
  def update
    respond_to do |format|
      if @user_promise.update(user_promise_params)
        format.html { redirect_to @user_promise, notice: 'User promise was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_promise }
      else
        format.html { render :edit }
        format.json { render json: @user_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_promises/1
  # DELETE /user_promises/1.json
  def destroy
    @user_promise.destroy
    respond_to do |format|
      format.html { redirect_to user_promises_url, notice: 'User promise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_promise
      @user_promise = UserPromise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_promise_params
      params.fetch(:user_promise, {})
    end
end
