# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.delete_all
Review.delete_all
[{:title => "The Art Institute of Chicago", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/5/51/20070622_Art_Institute_of_Chicago_Front_View.JPG",:admission_price => 1500, :description => "The Art Institute of Chicago Building (1893 structure built as theWorld's Congress Auxiliary Building) houses the Art Institute of Chicago, and is located in the Chicago Landmark Historic Michigan Boulevard District in the Loop community area of Chicago, Illinois. The building is also located in Grant Park on the east side of Michigan Avenue, and marks the third address for the Art Institute. The building was built for the joint purpose of accommodating the 1893 World's Columbian Exposition and subsequently the Art Institute. The core of the current complex, located opposite Adams Street, officially opened to the public on December 8, 1893, and was renamed the Allerton Building in 1968."},
{:title => "Navy Pier", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Navy_pier.jpg/1024px-Navy_pier.jpg", :admission_price => 0, :description => "Navy Pier is a 3,300-foot-long (1,010 m) pier on the Chicago shoreline of Lake Michigan. It is located in the Streeterville neighborhood of the Near North Side community area. The pier was built in 1916 at a cost of $4.5 million. It was a part of the Plan of Chicago developed by architect and city planner Daniel Burnhamand his associates. As Municipal Pier #2 (Municipal Pier #1 was never built), Navy Pier was planned and built to serve as a mixed-purpose piece of public infrastructure. Its primary purpose was as a cargo facility for lake freighters, andwarehouses were built up and down the Pier. However, the Pier was also designed to provide docking space for passenger excursion steamers, and in the pre–air conditioning era parts of the Pier, especially its outermost tip, were designed to serve as cool places for public gathering and entertainment. The Pier even had its own tram. Today, the pier is one of the most visited attractions in the entire Midwestern United States and is Chicago's number one tourist attraction."},
{:title => "John Hancock Center", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/2/20/John_Hancock_Center_viewed_from_Navy_Pier.jpg", :admission_price => 1800, :description => "The John Hancock Center is a 100-story, 1,127-foot(344 m) tallskyscraper, located at 875 North Michigan Avenue in the Streeterville area ofChicago, Illinois, United States. It was constructed under the supervision ofSkidmore, Owings and Merrill,with chief designer Bruce Graham and structural engineer Fazlur Khan. When the building topped out on May 6, 1968, it was the tallest building in the world outside New York City. It is currently the fourth-tallest building in Chicago and the seventh-tallest in the United States (after One World Trade Center, the Willis Tower, the Trump Tower Chicago.)"},
{:title => "University of Chicago", :photo_url =>"http://upload.wikimedia.org/wikipedia/commons/b/be/Eckhart_Hall.jpg", :admission_price => 0,:description=>"The University of Chicago (U of C, UChicago, or simply Chicago) is a private research university in Chicago, Illinois. Founded by the American Baptist Education Society with a donation from oil magnate and philanthropist John D. Rockefeller, the University of Chicago was incorporated in 1890; William Rainey Harper became the university's first president in 1891, and the first classes were held in 1892. Both Harper and future president Robert Maynard Hutchins advocated for Chicago's curriculum to be based upon theoretical and perennial issues rather than applied sciences and commercial utility."},
{:title => "Museum of Science and Industry", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/MSIChicago.JPG/2560px-MSIChicago.JPG", :admission_price => 900, :description=>"The Museum of Science and Industry (MSI) is located in Chicago, Illinois, in Jackson Park, in the Hyde Park neighborhood between Lake Michigan and The University of Chicago. It is housed in the former Palace of Fine Arts from the 1893 World's Columbian Exposition. Initially endowed by Julius Rosenwald, the Sears, Roebuck and Company president and philanthropist, it was supported by the Commercial Club of Chicago and opened in 1933 during the Century of Progress Exposition. It is the largest science museum in the western hemisphere. Among its diverse and expansive exhibits, the museum features a full-size replica coal mine, a German submarine (U-505) captured during World War II, a 3,500-square-foot (330 m2) model railroad, the first diesel-powered streamlined stainless-steel passenger train (Pioneer Zephyr), and the Apollo 8 spacecraft that carried the first humans to orbit the Moon."}
].each do |place_hash|
	p = Place.new
	p.title = place_hash[:title]
	p.photo_url = place_hash[:photo_url]
	p.admission_price = place_hash[:admission_price]
	p.description = place_hash[:description]
	p.save
end
