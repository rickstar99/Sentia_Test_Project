class PagesController < ApplicationController
  def import
  end
  
  def index
    csvImportService = CsvImporterService.new()
    csvImportService.call
  end
end
1