class CsvImporterService
  require 'csv'

  def call
    CSV.foreach('lib\csv\sentia_test_data.csv', headers: true) do |row|

      person = Person.find_or_create_by(Name: row['Name'])

      location = Location.find_or_create_by(Name: row['Locations'])

      affiliation = Affiliation.find_or_create_by(Name: row["Affiliations"])

      PeopleAffiliation.find_or_create_by(person_id: person.id, affiliation_id: affiliation.id)

      PeopleLocation.find_or_create_by(person_id: person.id, location_id: location.id);

    end
  end

  def number_of_records
  end
end
