desc "Create a csv for Building insertions"
task :csv_buildings => :environment do
  args = {
    rows: 10,
    file_path: "#{Rails.root}/public/csv_import/buildings/#{Time.now.to_i.to_s}.csv"
  }

  CSV.open(args[:file_path], "wb") do |csv|
    csv << ["reference","address","zip_code","city","country","manager_name"]
    args[:rows].to_i.times do | i |
      csv << [i.to_s, Faker::Address.street_address, Faker::Address.zip, Faker::Address.city, Faker::Address.country, Faker::Name.name]
    end
  end
end