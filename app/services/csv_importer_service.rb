class CsvImporterService
  require 'csv'

  def call
    CSV.foreach('lib\csv\sentia_test_data.csv', headers: true) do |row|
      person = Person.find_or_create_by(Name: row['Name'])

      unless row['Locations'].nil?
          row['Locations'].split(',').each do |c|
            location = Location.find_or_create_by(Name: c)
            PeopleLocation.find_or_create_by(person_id: person.id, location_id: location.id);
          end
      end

      unless row['Affiliations'].nil?
      row['Affiliations'].split(',').each do |c|
        affiliation = Affiliation.find_or_create_by(Name: c)
        PeopleAffiliation.find_or_create_by(person_id: person.id, affiliation_id: affiliation.id);
      end
      end

    end
  end
end

