# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
data = { schools: [
{
 name:"New York School of Design",
 city: "New York",
 rep: "Milly Watson",
 email: "mwatson@nysd.edu",
 veterans: 10,
 tuition: 43000
},
{
 name:"New York University",
 city: "New York",
 rep: "Jane Watdaughter",
 email: "Watdaughter@nyu.edu",
 veterans: 12,
 tuition: 48500
},
{
 name:"Culinary Institute",
 city: "New York",
 rep: "Tim Realperson",
 email: "trealperson@culinaryu.com",
 veterans: 8,
 tuition: 37295
},
{
 name:"University of 5th ave",
 city: "New York",
 rep: "Johnny Brooklyn",
 email: "JBrook@u5.edu",
 veterans: 5,
 tuition: 29999
},
{
 name:"University of Hard Knocks",
 city: "Brooklyn",
 rep: "Sean Carter",
 email: "scarter@uvhk.edu",
 veterans: 4,
 tuition: 34293
},
{
 name:"University of Chicago",
 city: "Chicago",
 rep: "Barack Obama",
 email: "bobama@uoc.edu",
 veterans: 15,
 tuition: 48000
},
{
 name:"UCLA",
 city: "Los Angeles",
 rep: "Michael Jackson",
 email: "MJ@ucla.edu",
 veterans: 25,
 tuition: 20000
},
{
 name:"University of North Carolina",
 city: "Charlotte",
 rep: "Charlotte Webb",
 email: "cwebb@unc.edu",
 veterans: 40,
 tuition: 21000
},
{
 name:"Harvard University",
 city: "Boston",
 rep: "Neil DeGrasse",
 email: "ndg@harvard.edu",
 veterans: 67,
 tuition: 51000
},
{
 name:"MIT",
 city: "Boston",
 rep: "Joe Johnson",
 email: "jj@mit.edu",
 veterans: 4,
 tuition: 21000
}

]
}
data[:"schools"].each do |schools|
 school = School.create(name: schools[:name], city: schools[:city], rep: schools[:rep], email: schools[:email], veterans: schools[:veterans], tuition: schools[:tuition])
end
