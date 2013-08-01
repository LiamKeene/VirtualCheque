namespace :db do
  desc 'Fill database with sample data'
  task populate: :environment do
    # Don't want too many names
    name_array = (1..5).map { Faker::Name.name }
    
    # Initial date to create cheques from
    date_from = Time.new(2013, 1, 1).to_f
    date_to = Time.now.to_f

    # Create a lot of cheques
    100.times do |n|
      # Random date between now and start date (weighted towards the start)
      cheque_date = Time.at((date_to - date_from) / 50 * rand + date_from)

      Cheque.create!(
        payment_date: cheque_date,
        recipient: name_array.sample,
        value: rand(0..2000.0).round(2)
      )

      # Update the date so the next cheque will be more recent
      date_from = cheque_date.to_f
    end
  end
end