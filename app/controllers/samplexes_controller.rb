class SamplexesController < ApplicationController
  before_action :set_samplex, only: [:show, :edit, :update, :destroy]

  # GET /samplexes
  # GET /samplexes.json
  def index
    @samplexes = Samplex.all
  end

  # GET /samplexes/1
  # GET /samplexes/1.json
  def show
  end

  # GET /samplexes/new
  def new
    @samplex = Samplex.new
  end

  # GET /samplexes/1/edit
  def edit
  end

  # POST /samplexes
  # POST /samplexes.json
  def create
    @samplex = Samplex.new(samplex_params)

    respond_to do |format|
      if @samplex.save
        format.html { redirect_to @samplex, notice: 'Samplex was successfully created.' }
        format.json { render :show, status: :created, location: @samplex }
      else
        format.html { render :new }
        format.json { render json: @samplex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samplexes/1
  # PATCH/PUT /samplexes/1.json
  def update
    respond_to do |format|
      if @samplex.update(samplex_params)
        format.html { redirect_to @samplex, notice: 'Samplex was successfully updated.' }
        format.json { render :show, status: :ok, location: @samplex }
      else
        format.html { render :edit }
        format.json { render json: @samplex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samplexes/1
  # DELETE /samplexes/1.json
  def destroy
    @samplex.destroy
    respond_to do |format|
      format.html { redirect_to samplexes_url, notice: 'Samplex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_samplex
      @samplex = Samplex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def samplex_params
      params.require(:samplex).permit(:fname, :lname, :lname)
    end
end
