class PromisesController < ApplicationController
  before_action :set_promise, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  # GET /promises
  # GET /promises.json
  def index
    @promises = Promise.all
  end

  # GET /promises/1
  # GET /promises/1.json
  def show
  end

  # GET /promises/new
  def new
    @promise = Promise.new
    @id = params[:p_id]

  end

  # GET /promises/1/edit
  def edit

  end

  # POST /promises
  # POST /promises.json
  def create
    @promise = Promise.create(promise_params)

    respond_to do |format|
      if @promise.save
        format.html { redirect_to "/projects/"+@promise.project_id.to_s, notice: 'Promise was successfully created.' }
        format.json { render :show, status: :created, location: @promise }
      else
        format.html { render :new }
        format.json { render json: @promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promises/1
  # PATCH/PUT /promises/1.json
  def update
    respond_to do |format|
      if @promise.update(promise_params)
        format.html { redirect_to "/projects/"+@promise.project_id.to_s, notice: 'Promise was successfully updated.' }
        format.json { render :show, status: :ok, location: @promise }
      else
        format.html { render :edit }
        format.json { render json: @promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promises/1
  # DELETE /promises/1.json
  def destroy
    @promise.destroy
    respond_to do |format|
      format.html { redirect_to "/projects/"+@promise.project_id.to_s, notice: 'Promise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_promise
    @promise = Promise.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def promise_params
    params.require(:promise).permit( :title, :info, :price, :project_id, :image, :date)
  end
end