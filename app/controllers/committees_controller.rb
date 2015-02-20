class CommitteesController < ApplicationController

	def index
		@committees = Committee.all
	end

	def show
    @committee = Committee.find(params[:id])
	end

  def edit
    @committee = Committee.find(params[:id])
  end

	def new
    @committee = Committee.new
  end

  def create
   	@committee = Committee.new(committee_params)

    if @committee.save
      redirect_to committees_path, notice: "Dodałeś komitet wyborczy"
    else
      render new_committee_path
    end  
  end

  def update
    @committee = Committee.find(params[:id])
    respond_to do |format|
      if @committee.update(committee_params)
        format.html { redirect_to @committee, notice: 'Committee was successfully updated.' }
        format.json { render :show, status: :ok, location: @committee }
      else
        format.html { render :edit }
        format.json { render json: @committee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @committee = Committee.find(params[:id])
    @committee.destroy
    respond_to do |format|
      format.html { redirect_to committees_url, notice: 'Komitet został usunięty' }
      format.json { head :no_content }
    end
  end

  private
  def committee_params
    params.require(:committee).permit(
        :name,
        :image_file_name
        
    )
  end  
end
