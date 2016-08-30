require "csv_importer"

CSVImporter.config[:history_whitelisting][:buildings] = [:manager_name]
CSVImporter.config[:history_whitelisting][:people] = [:email, :home_phone_number, :mobile_phone_number, :address]