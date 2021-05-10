class SourceOfIncomesController < ApplicationController
  before_action :set_source_of_income, only: %i[ show edit update destroy ]

  # GET /source_of_incomes or /source_of_incomes.json
  def index
    @source_of_incomes = SourceOfIncome.all
  end

  # GET /source_of_incomes/1 or /source_of_incomes/1.json
  def show
  end

  # GET /source_of_incomes/new
  def new
    @loan = Loan.find(params[:loan_id])
    @source_of_income = @loan.source_of_income.build
  end

  # GET /source_of_incomes/1/edit
  def edit
  end

  # POST /source_of_incomes or /source_of_incomes.json
  def create
    @loan = Loan.find(params[:loan_id])
    @source_of_income = @loan.source_of_income.build(source_of_income_params)

    respond_to do |format|
      if @source_of_income.save
        format.html { redirect_to @source_of_income, notice: "source of income was successfully created." }
        format.json { render :show, status: :created, location: @source_of_income }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @source_of_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_of_incomes/1 or /source_of_incomes/1.json
  def update
    respond_to do |format|
      if @source_of_income.update(source_of_income_params)
        format.html { redirect_to @source_of_income, notice: "source of income was successfully updated." }
        format.json { render :show, status: :ok, location: @source_of_income }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @source_of_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_of_incomes/1 or /source_of_incomes/1.json
  def destroy
    @source_of_income.destroy
    respond_to do |format|
      format.html { redirect_to source_of_incomes_url, notice: "source of income was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_of_income
      @source_of_income = sourceOfIncome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def source_of_income_params
      params.require(:source_of_income).permit(:salary_income, :independent, :mixed_income, :expenses, :difference, :approval)
    end
end
