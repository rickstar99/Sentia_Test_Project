class PagesController < ApplicationController
  def import
  end
  
  def index
    csvImportService = CsvImporterService.new()

      csvImportService.call
    @people_affiliation = PeopleAffiliation.all
    @people_location = PeopleLocation.all
    @people = Person.all
    @location = Location.all
    @affiliation = Affiliation.all

    end
end