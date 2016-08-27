class CreateConsumerComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :consumer_complaints do |t|
      t.date :date_received
      t.string :product
      t.string :sub_product
      t.string :issue
      t.string :sub_issue
      t.string :consumer_complaint_narrative
      t.string :company_public_response
      t.string :company
      t.string :state
      t.string :zip_code
      t.string :tags
      t.string :consumer_consent_provided
      t.string :submitted_via
      t.date :date_sent_to_company
      t.string :company_response_to_consumer
      t.boolean :timely_response
      t.boolean :consumer_disputed
      t.integer :complaint_id

      t.timestamps
    end
  end
end
