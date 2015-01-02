class Citation < ActiveRecord::Base
	attr_reader :author, :title, :pub_info, :classification, :line_numbers_quoted, :page_number

	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |citation|
	      csv << citation.attributes.values_at(*column_names)
	    end
	  end
	end

	def self.import(file)
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet[0]
	  puts "==================="
	  puts header
	  puts "==================="

	  (1..spreadsheet.size-1).each do |i|
	    row = Hash[[header, spreadsheet[i]].transpose]
	    citation = find_by_id(row["id"]) || new
	    citation.attributes = row.to_hash.slice(*row.to_hash.keys)
	    citation.save!
	  end
	end

	def self.open_spreadsheet(file)
	  case File.extname(file.original_filename)
		  when ".csv" then CSV.read(file.path)
		  when ".xls" then Excel.new(file.path, nil, :ignore)
		  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
		  else raise "Unknown file type: #{file.original_filename}"
	  end
	end
end
