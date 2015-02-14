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
	end

	# POST /voivodeships
  # POST /voivodeships.json
  def create
   	@voivodeship = Voivodeship.new(voivodeship_params)

   	respond_to do |format|
     	if @voivodeship.save
     		format.html { redirect_to @voivodeship, notice: 'Voivodeship was successfully created.' }
     		format.json { render :show, status: :created, location: @voivodeship }
   		else
     		format.html { render :new }
     		format.json { render json: @voivodeship.errors, status: :unprocessable_entity }
   		end
   	end
  end

  # PATCH/PUT /voivodeships/1
  def update
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
    @voivodeship.destroy
    respond_to do |format|
      format.html { redirect_to voivodeships_url, notice: 'Voivodeship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  




end
