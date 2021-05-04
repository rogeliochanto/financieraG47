class SourseOfIncomesController < ApplicationController
  before_action :set_sourse_of_income, only: %i[ show edit update destroy ]

  # GET /sourse_of_incomes or /sourse_of_incomes.json
  def index
    @sourse_of_incomes = SourseOfIncome.all
  end

  # GET /sourse_of_incomes/1 or /sourse_of_incomes/1.json
  def show
  end

  # GET /sourse_of_incomes/new
  def new
    @sourse_of_income = SourseOfIncome.new
  end

  # GET /sourse_of_incomes/1/edit
  def edit
  end

  # POST /sourse_of_incomes or /sourse_of_incomes.json
  def create
    @sourse_of_income = SourseOfIncome.new(sourse_of_income_params)

    respond_to do |format|
      if @sourse_of_income.save
        format.html { redirect_to @sourse_of_income, notice: "Sourse of income was successfully created." }
        format.json { render :show, status: :created, location: @sourse_of_income }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sourse_of_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sourse_of_incomes/1 or /sourse_of_incomes/1.json
  def update
    respond_to do |format|
      if @sourse_of_income.update(sourse_of_income_params)
        format.html { redirect_to @sourse_of_income, notice: "Sourse of income was successfully updated." }
        format.json { render :show, status: :ok, location: @sourse_of_income }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sourse_of_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sourse_of_incomes/1 or /sourse_of_incomes/1.json
  def destroy
    @sourse_of_income.destroy
    respond_to do |format|
      format.html { redirect_to sourse_of_incomes_url, notice: "Sourse of income was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sourse_of_income
      @sourse_of_income = SourseOfIncome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sourse_of_income_params
      params.require(:sourse_of_income).permit(:salary_income, :independent, :mixed_income, :expenses, :difference, :approval)
    end
end
