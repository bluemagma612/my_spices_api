# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cuisine.create(
	[ { name: 'Mexican', 
	    img_path: "img/cuisine/taco-1018962_960_720.jpg", 
	    description: "Mexican cuisine is primarily a fusion of indigenous Mesoamerican cooking with European, especially Spanish, elements added after the Spanish conquest of the Aztec Empire in the 16th century. The staples are native foods, such as corn, beans, avocados, tomatoes, and chili peppers, along with rice which was brought by the Spanish. Europeans introduced a large number of other foods, the most important of which were meats from domesticated animals (beef, pork, chicken, goat, and sheep), dairy products (especially cheese), and various herbs and spices.", 
	    },
	    { name: 'Indian', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
	    description: "Indian cuisine encompasses a wide variety of regional and traditional cuisines native to India. Given the range of diversity in soil type, climate, culture, ethnic group and occupations, these cuisines vary significantly from each other and use locally available spices, herbs, vegetables and fruits. ", 
	    },
	    { name: 'Caribbean', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
    	description: "Caribbean cuisine is a fusion of African, Amerindian, European, East Indian, Arab and Chinese cuisine. These traditions were brought from many different countries when they came to the Caribbean. In addition, the population has created styles that are unique to the region.", 
	    },
	    { name: 'French', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
    	description: "French cuisine consists of the cooking traditions and practices from France.",
	    },
	    { name: 'Thai', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
    	description: "Thai cuisine is the national cuisine of Thailand. Balance, detail, and variety are of paramount significance to Thai chefs.",
	    },
	    { name: 'North African', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
    	description: "The Maghreb, the northernmost part of Africa along the Mediterranean Sea is composed of the countries of Algeria, Libya, Morocco, and Tunisia. The region has a high degree of geographic, political, social, economic and cultural diversity which influences the region's cuisine and the culinary style.",
	    },
	    { name: 'Cajun', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
    	description: "Cajun cuisine is a style of cooking named for the French-speaking Acadian people deported by the British from Acadia in Canada to the Acadiana region of Louisiana. It is what could be called a rustic cuisine; locally available ingredients predominate and preparation is simple.",
	    },
	    { name: 'Mediterranean', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
    	description: "Mediterranean cuisine is the food from the lands around the Mediterranean Sea. This geographical area broadly follows the distribution of the olive tree, which provides one of the most distinctive features of the region's cooking, olive oil. Although this region spans a wide variety of cultures with distinct cuisines, the historical connections of the region, as well as the impact of the Mediterranean Sea on the region's climate and economy, mean that there are common elements in these cuisines." },
	    { name: 'Middle Eastern', 
    	img_path: "img/cuisine/taco-1018962_960_720.jpg", 
    	description: "Middle Eastern cuisine is the cuisine of the various countries and peoples of the Middle East. The cuisine of the region is diverse while having a degree of homogeneity. It includes Arab cuisine, Persian cuisine, Israeli cuisine, Kurdish cuisine, Armenian cuisine, Georgian cuisine, Azerbaijani cuisine and Turkish cuisine[1] Some commonly used ingredients include olives and olive oil, pitas, honey, sesame seeds, dates, sumac, chickpeas, mint and parsley. Some popular dishes include Kebabs, Dolma, and Doner Kebab (similar to Shawarma)."}
])
Spice.create(
	[ {name: "Corriander",  
	  img_path: "img/spice/coriander-960_720.jpg", 
	  description: "Coriander is native to regions spanning from southern Europe and northern Africa to southwestern Asia. It is a soft plant growing to 50 cm (20 in) tall. The leaves are variable in shape, broadly lobed at the base of the plant, and slender and feathery higher on the flowering stems. The flowers are borne in small umbels, white or very pale pink, asymmetrical, with the petals pointing away from the center of the umbel longer (5–6 mm or 0.20–0.24 in) than those pointing toward it (only 1–3 mm or 0.039–0.118 in long). The fruit is a globular, dry schizocarp 3–5 mm (0.12–0.20 in) in diameter. The seeds are generally used as a spice or an added ingredient in foods or recipes, although sometimes they are eaten alone.", 
	  },
	  {name: "Oregano", 
	  img_path: "img/spice/coriander-960_720.jpg", 
	  description: "", 
	  },
	  {name: "Chili Powder", 
	  img_path: "img/spice/coriander-960_720.jpg", 
	  description: "", 
	  },
	  {name: "Garlic Powder", 
	  img_path: "img/spice/coriander-960_720.jpg", 
	  description: "", 
	  },
	  {name: "Cinnamon", 
	  img_path: "img/spice/coriander-960_720.jpg", 
	  description: "", 
	  }
])