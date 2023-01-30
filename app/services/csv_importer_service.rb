class CsvImporterService
  require 'csv'

  def call
    CSV.foreach('lib\csv\sentia_test_data.csv', headers: true) do |row|
      person_hash = {}
      location_hash = {}
      affiliation_hash = {}        

      person_hash[:Name] = row["Name"]
      
      Person.create person_hash
      
      location_hash[:Name] = row["Locations"]

      Locations.create location_hash

      affiliation_hash[:Name] = row["Affiliations"]

      Affiliations.create affiliation_hash
    end
  end

  def number_of_records
  end
end
