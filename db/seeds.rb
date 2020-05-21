venues = [
  {
    name: "Coder Academy",
    address: "120 Spencer Street, Melbourne"
  },
  {
    name: "Melbourne Cricket Ground",
    address:"Melbourne Cricket Ground"
  },
  {
    name: "Como Park",
    address: "Como Park, South Yarra"
  },
  {
    name: "Coder Academy Sydney",
    address: "Level 3/118 Walker St, North Sydney NSW 2060"
  }
]

information = [
  {
    details: "some details"
  },
  {
    details: "some more details"
  },
  {
    details: "some random details"
  },
  {
    details: "some new details"
  }
]

venues.each_with_index do |venue, index|
  venue = Venue.create(venue)
  venue.create_information(information[index])
end