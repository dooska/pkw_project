class VoivodeshipsController < ApplicationController
	
	 # GET /voivodeships
	def index
		@voivodeships = Voivodeship.all
	end

	# GET /voivodeships/1
	def show
    @voivodeship = Voivodeship.find(params[:id])
	end

	# GET /voivodeships/1/edit
	def edit
    @voivodeship = Voivodeship.find(params[:id])
	end

  def new
    @voivodeship = Voivodeship.new
  end

	# POST /voivodeships
  def create
   	@voivodeship = Voivodeship.new(voivodeship_params)

    if @voivodeship.save
      redirect_to voivodeships_path, notice: "Dodałeś wojewodztwo"
    else
      render new_voivodeship_path
    end  
  end

  def update
    @voivodeship = Voivodeship.find(params[:id])
    respond_to do |format|
      if @voivodeship.update(voivodeship_params)
        format.html { redirect_to @voivodeship, notice: 'Voivodeship was successfully updated.' }
        format.json { render :show, status: :ok, location: @voivodeship }
      else
        format.html { render :edit }
        format.json { render json: @voivodeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voivodeships/1
  def destroy
    @voivodeship = Voivodeship.find(params[:id])
    @voivodeship.destroy
    respond_to do |format|
      format.html { redirect_to voivodeships_url, notice: 'Voivodeship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def voivodeship_params
    params.require(:voivodeship).permit(:id, :name, :electoral_mandates)  
  end 



end
