class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.date :date_received
      t.string :product
      t.string :sub_product
      t.string :issue
      t.string :sub_issue
      t.string :company
      t.string :state
      t.string :zip_code
      t.string :tags
      t.boolean :consumer_consent_provided
      t.string :submitted_via
      t.date :date_sent_to_company
      t.string :company_response_to_consumer
      t.boolean :timely_response

      t.timestamps
    end
  end
end