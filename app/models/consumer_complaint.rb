class ConsumerComplaint < ApplicationRecord

  def self.import(file)	
    CSV.foreach(file.path, headers: true) do |row|
      ConsumerComplaint.create! row.to_hash
    end
  end

end
