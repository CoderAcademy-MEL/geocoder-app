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

venues.each do |venue|
  Venue.create(venue)
end