class Company < ApplicationRecord

  def self.import(file)	
    CSV.foreach(file.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|
      Company.create! row.to_hash
    end
  end
end
