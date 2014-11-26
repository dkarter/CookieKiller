class KillersController < ApplicationController
  before_action :set_killer, only: [:show, :edit, :update, :destroy]

  session :off, only: :index

  # GET /killers
  # GET /killers.json
  def index
    @killers = Killer.all

    respond_to do |format|
      format.html do
        reset_session
        val = 20 + Random.rand(11)
        cookies['_CookieKiller_session'] = { value: '', expires: 1.year.ago, httponly: true }
        render :index
      end
    end
  end

  # GET /killers/1
  # GET /killers/1.json
  def show
  end

  # GET /killers/new
  def new
    @killer = Killer.new
  end

  # GET /killers/1/edit
  def edit
  end

  # POST /killers
  # POST /killers.json
  def create
    @killer = Killer.new(killer_params)

    respond_to do |format|
      if @killer.save
        format.html { redirect_to @killer, notice: 'Killer was successfully created.' }
        format.json { render :show, status: :created, location: @killer }
      else
        format.html { render :new }
        format.json { render json: @killer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /killers/1
  # PATCH/PUT /killers/1.json
  def update
    respond_to do |format|
      if @killer.update(killer_params)
        format.html { redirect_to @killer, notice: 'Killer was successfully updated.' }
        format.json { render :show, status: :ok, location: @killer }
      else
        format.html { render :edit }
        format.json { render json: @killer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /killers/1
  # DELETE /killers/1.json
  def destroy
    @killer.destroy
    respond_to do |format|
      format.html { redirect_to killers_url, notice: 'Killer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_killer
      @killer = Killer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def killer_params
      params[:killer]
    end
end
