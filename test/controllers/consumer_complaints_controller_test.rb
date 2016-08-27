require 'test_helper'

class ConsumerComplaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consumer_complaint = consumer_complaints(:one)
  end

  test "should get index" do
    get consumer_complaints_url
    assert_response :success
  end

  test "should get new" do
    get new_consumer_complaint_url
    assert_response :success
  end

  test "should create consumer_complaint" do
    assert_difference('ConsumerComplaint.count') do
      post consumer_complaints_url, params: { consumer_complaint: { company: @consumer_complaint.company, company_public_response: @consumer_complaint.company_public_response, company_response_to_consumer: @consumer_complaint.company_response_to_consumer, complaint_id: @consumer_complaint.complaint_id, consumer_complaint_narrative: @consumer_complaint.consumer_complaint_narrative, consumer_consent_provided: @consumer_complaint.consumer_consent_provided, consumer_disputed: @consumer_complaint.consumer_disputed, date_received: @consumer_complaint.date_received, date_sent_to_company: @consumer_complaint.date_sent_to_company, issue: @consumer_complaint.issue, product: @consumer_complaint.product, state: @consumer_complaint.state, sub_issue: @consumer_complaint.sub_issue, sub_product: @consumer_complaint.sub_product, submitted_via: @consumer_complaint.submitted_via, tags: @consumer_complaint.tags, timely_response: @consumer_complaint.timely_response, zip_code: @consumer_complaint.zip_code } }
    end

    assert_redirected_to consumer_complaint_url(ConsumerComplaint.last)
  end

  test "should show consumer_complaint" do
    get consumer_complaint_url(@consumer_complaint)
    assert_response :success
  end

  test "should get edit" do
    get edit_consumer_complaint_url(@consumer_complaint)
    assert_response :success
  end

  test "should update consumer_complaint" do
    patch consumer_complaint_url(@consumer_complaint), params: { consumer_complaint: { company: @consumer_complaint.company, company_public_response: @consumer_complaint.company_public_response, company_response_to_consumer: @consumer_complaint.company_response_to_consumer, complaint_id: @consumer_complaint.complaint_id, consumer_complaint_narrative: @consumer_complaint.consumer_complaint_narrative, consumer_consent_provided: @consumer_complaint.consumer_consent_provided, consumer_disputed: @consumer_complaint.consumer_disputed, date_received: @consumer_complaint.date_received, date_sent_to_company: @consumer_complaint.date_sent_to_company, issue: @consumer_complaint.issue, product: @consumer_complaint.product, state: @consumer_complaint.state, sub_issue: @consumer_complaint.sub_issue, sub_product: @consumer_complaint.sub_product, submitted_via: @consumer_complaint.submitted_via, tags: @consumer_complaint.tags, timely_response: @consumer_complaint.timely_response, zip_code: @consumer_complaint.zip_code } }
    assert_redirected_to consumer_complaint_url(@consumer_complaint)
  end

  test "should destroy consumer_complaint" do
    assert_difference('ConsumerComplaint.count', -1) do
      delete consumer_complaint_url(@consumer_complaint)
    end

    assert_redirected_to consumer_complaints_url
  end
end
