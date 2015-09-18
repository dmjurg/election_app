Voter.delete_all

50.times do
  voter = Voter.create(
    :first_name   => Faker::Name.first_name,
    :last_name    => Faker::Name.last_name,
    :address      => Faker::Address.street_address,
    :city         => Faker::Address.city,
    :state        => Faker::Address.state,
    :zip          => Faker::Address.zip
  )
end
