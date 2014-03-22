class BancWheresController < ApplicationController
  before_action :set_banc_where, only: [:show, :edit, :update, :destroy]

  # GET /banc_wheres
  # GET /banc_wheres.json
  def index
    @banc_wheres = BancWhere.all
  end

  # GET /banc_wheres/1
  # GET /banc_wheres/1.json
  def show
  end

  # GET /banc_wheres/new
  def new
    @banc_where = BancWhere.new
  end

  # GET /banc_wheres/1/edit
  def edit
  end

  # POST /banc_wheres
  # POST /banc_wheres.json
  def create
    @banc_where = BancWhere.new(banc_where_params)

    respond_to do |format|
      if @banc_where.save
        format.html { redirect_to @banc_where, notice: 'Banc where was successfully created.' }
        format.json { render action: 'show', status: :created, location: @banc_where }
      else
        format.html { render action: 'new' }
        format.json { render json: @banc_where.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banc_wheres/1
  # PATCH/PUT /banc_wheres/1.json
  def update
    respond_to do |format|
      if @banc_where.update(banc_where_params)
        format.html { redirect_to @banc_where, notice: 'Banc where was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @banc_where }
      else
        format.html { render action: 'edit' }
        format.json { render json: @banc_where.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banc_wheres/1
  # DELETE /banc_wheres/1.json
  def destroy
    @banc_where.destroy
    respond_to do |format|
      format.html { redirect_to banc_wheres_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banc_where
      @banc_where = BancWhere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banc_where_params
      params.require(:banc_where).permit(:n_rue, :adress, :code_postal, :ville)
    end
end
