class ConsumerComplaintsController < ApplicationController
  before_action :set_consumer_complaint, only: [:show, :edit, :update, :destroy]

  # GET /consumer_complaints
  # GET /consumer_complaints.json
  def index
    @consumer_complaints = ConsumerComplaint.order(:date_received).page params[:page]
  end

  # GET /consumer_complaints/1
  # GET /consumer_complaints/1.json
  def show
  end

  # GET /consumer_complaints/new
  def new
    @consumer_complaint = ConsumerComplaint.new
  end

  # GET /consumer_complaints/1/edit
  def edit
  end

  # POST /consumer_complaints
  # POST /consumer_complaints.json
  def create
    @consumer_complaint = ConsumerComplaint.new(consumer_complaint_params)

    respond_to do |format|
      if @consumer_complaint.save
        format.html { redirect_to @consumer_complaint, notice: 'Consumer complaint was successfully created.' }
        format.json { render :show, status: :created, location: @consumer_complaint }
      else
        format.html { render :new }
        format.json { render json: @consumer_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumer_complaints/1
  # PATCH/PUT /consumer_complaints/1.json
  def update
    respond_to do |format|
      if @consumer_complaint.update(consumer_complaint_params)
        format.html { redirect_to @consumer_complaint, notice: 'Consumer complaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @consumer_complaint }
      else
        format.html { render :edit }
        format.json { render json: @consumer_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumer_complaints/1
  # DELETE /consumer_complaints/1.json
  def destroy
    @consumer_complaint.destroy
    respond_to do |format|
      format.html { redirect_to consumer_complaints_url, notice: 'Consumer complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
    ConsumerComplaint.import(params[:file])
    redirect_to consumer_complaints_path, notice: 'Consumer complaint was successfully uploaded.'
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumer_complaint
      @consumer_complaint = ConsumerComplaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumer_complaint_params
      params.require(:consumer_complaint).permit(:date_received, :product, :sub_product, :issue, :sub_issue, :consumer_complaint_narrative, :company_public_response, :company, :state, :zip_code, :tags, :consumer_consent_provided, :submitted_via, :date_sent_to_company, :company_response_to_consumer, :timely_response, :consumer_disputed, :complaint_id)
    end
end
