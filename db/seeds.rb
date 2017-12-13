# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Gymnasium.create(name: "RAC - Indoor Court",
                 maxUsers: 20,
                 description: "Encompassing 120,000 square feet, the Recreation and Athletic Complex (RAC) boasts three gymnasiums, racquetball courts, squash courts, and a two story fitness gallery.  Recently renovated and re-opened in 2009, The RAC serves as the home for Mason Recreation programs, three intercollegiate sports (tennis, volleyball, and wrestling), ROTC Offices, as well as a classroom and offices for the School of Recreation, Health and Tourism.",
                 image: "rac.jpg",
                 info_url: "https://recreation.gmu.edu/facilities/rac/",
                 open_hour: "6",
                 close_hour: "23")
Gymnasium.create(name: "RAC - Outdoor Field",
                 maxUsers: 20,
                 description: "The RAC Field is located adjacent to the Recreation & Athletic Complex, just off of Patriot Circle. The field was converted from a natural grass surface to an artificial turf surface in 2006.  The field features soccer, football, men’s and women’s lacrosse lines.  The complex provides bleacher seating for approximately 8oo spectators and programmable lights for evening play.",
                 image: "rac_field.jpg",
                 info_url: "https://recreation.gmu.edu/facilities/rac-field/",
                 open_hour: "6",
                 close_hour: "23")
Gymnasium.create(name: "Skyline Fitness - Basketball Court",
                 maxUsers: 20,
                 description: "Skyline Fitness Center is connected to Southside Dining and centrally located on the Fairfax campus. The facility is available to full-time students, part-time student members and all other members of Mason Recreation. Skyline Fitness Center is open during the fall and spring semesters and closed during holiday, winter and summer breaks.",
                 image: "skyline.jpg",
                 info_url: "https://recreation.gmu.edu/facilities/skyline-fitness/",
                 open_hour: "12",
                 close_hour: "23")