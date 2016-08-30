desc "Create a csv for Building insertions"
task :csv_people => :environment do
  args = {
    rows: 10000,
    file_path: "#{Rails.root}/public/csv_import/people/#{Time.now.to_i.to_s}.csv"
  }

  Faker::Config.locale = 'fr'

  CSV.open(args[:file_path], "wb") do |csv|
    csv << %W(reference firstname lastname home_phone_number mobile_phone_number email address)
    args[:rows].to_i.times do | i |
      csv << [
        i.to_s,
        Faker::Name.first_name,
        Faker::Name.last_name,
        Faker::PhoneNumber.phone_number,
        Faker::PhoneNumber.cell_phone,
        Faker::Internet.email,
        Faker::Address.street_address
      ]
    end
  end
end
