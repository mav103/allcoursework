class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
  end

  def fill_result_form
    id = params[:result_id].to_i
    if id > 0
      @result = Result.find(id)
    else
      @result = nil
    end
    respond_to do |format|
      format.js
    end
  end

  def fill_card_form
    id = params[:card_id].to_i
    if id > 0
      @card = Card.find(id)
    else
      @card = nil
    end
    respond_to do |format|
      format.js
    end
  end

  def fill_ward_form
    id = params[:ward_id].to_i
    if id > 0
      @ward = Ward.find(id)
    else
      @ward = nil
    end
    respond_to do |format|
      format.js
    end
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: 'Амбулаторный период создан.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Амбулаторный период изменен.' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Амбулаторный период удален.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:card_id, :result_id, :ward_id, :cause, :entered, :ended, :epicrisis,
      ward_attributes: [:id, :department, :floor, :capacity, :number, :num_of_pacients],
      result_attributes: [:id, :conclusion, :title, :rdate, :appointment, :causes, :first_inspection, :results],
      card_attributes: [:id, :second_name, :first_name, :last_name, :passport, :insurance, :residence, :created, :allergy, :cart_number])
    end
end
