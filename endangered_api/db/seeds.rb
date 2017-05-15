# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Species.destroy_all

birds= Category.create! ({customizable: false, name:"birds"})
mammals= Category.create! ({customizable: false, name:"mammals"})
fish= Category.create! ({customizable: false, name:"fish"})
reptiles= Category.create! ({customizable: false, name:"reptiles"})
amphibians= Category.create! ({customizable: false, name:"amphibians"})
insects= Category.create! ({customizable: false, name:"insects"})

species= Species.create!([
#     {common_name:"Mitchell's satyr", scientific_name:"Neonympha mitchellii", status:"Endangered", threat:"Habitat Loss and Degradation; Exotic Weed Invasion; Pesticides / Pollutants; Butterfly Collectors", img_url:"https://mnfi.anr.msu.edu/element-images/1763.jpg", category: insects },
#     {common_name:"Puritan tiger beetle", scientific_name:"Cicindela puritana", status:"Endangered ", threat:"Habitat Loss and Degradation; Flooding; Parasites; Insect Predators", img_url:"http://i5.photobucket.com/albums/y196/Garfman/puritana202f5581.gif", category: insects },
#     {common_name:"Shenandoah salamander", scientific_name:"Plethodon shenandoah", status:"Endangered ", threat:"Infestation by non-native insects/disease; restricted range of habitat", img_url:"http://www.virginiaherpetologicalsociety.com/amphibians/salamanders/shenandoah-salamander/Shenandoah%20Salamander%20(Plethodon%20shenandoah)0002.JPG", category: amphibians },
#     {common_name:"Spotfin chub", scientific_name:"Cyprinella monacha", status:"Vunerable ", threat:"Habitat loss, sedimentation, and dams", img_url:"https://static.wixstatic.com/media/6f2f2b_cc97e5c302fc44d78d83128b50f1d4bb.jpg_srz_541_419_85_22_0.50_1.20_0.00_jpg_srz", category: fish },
#     {common_name:"Duskytail darter", scientific_name:"Etheostoma percnurum", status:"Endangered ", threat:"Impoundment of waterways, increased silt, logging, coal mining and disease", img_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Etheostoma_percnurum.jpg/1024px-Etheostoma_percnurum.jpg", category: fish },
#     {common_name:"Bog Turtle", scientific_name:"Glyptemys muhlenbergii", status:"Critically Endangered ", threat:"Invasive Plants, Urban Development, and Black Market pet trade", img_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Bog_Turtle.jpg/800px-Bog_Turtle.jpg", category: reptiles },
#     {common_name:"Green Sea Turtle", scientific_name:"Chelonia mydasa", status:"Endangered ", threat:"Hunting, poaching, egg harvesting, boat strikes, pollution, fishermen nets, fibropapillomatosis.", img_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Green_turtle_swimming_over_coral_reefs_in_Kona.jpg/1024px-Green_turtle_swimming_over_coral_reefs_in_Kona.jpg", category: reptiles },
#     {common_name:"Red knot", scientific_name:"Calidris canutus rufa", status:"Vulnerable ", threat:"Habitat destruction has been the primary cause of population decline", img_url:"https://c1.staticflickr.com/4/3440/4564657088_902c932b2b_b.jpg", category: birds },
#     {common_name:"Piping plover", scientific_name:"Charadrius melodus", status:"Endangered ", threat:"Habitat destruction has been the primary cause of population decline", img_url:"http://greglasley.com/images/P/Piping%20Plover%200057.jpgf", category: birds },
#     {common_name:" Northern long-eared Bat", scientific_name:"Myotis septentrionalis", status:"Vulnerable", threat:" Habitat destruction has been the primary cause of population decline.", img_url:"http://www.fnanaturesearch.org/images/stories/ns/marked/M/4995.jpg", category: mammals },
#     {common_name:"Virginia Northern Flying Squirrel ", scientific_name:"Glaucomys sabrinus", status:"Endangered ", threat:"Habitat destruction has been the primary cause of population decline. ", img_url:"http://www.alleghenyclimate.org/images/wvnfs.jpg", category: mammals }
# ])














{common_name:"Northern long-eared Bat ", scientific_name:"Myotis septentrionalis", status:"Threatened ", threat:"Timber harvesting may interfere with these bats' ability to utilize trees for nursery colonies and day roosts. It also may prove detrimental to their foraging habits in forested areas (Thomas, 1993). Use of chemical and biological insecticides is another source of concern affecting their food supply. A less vital, yet very real threat to M. septentrionalis is the disturbance they face in the caves (where recreational 'caving' is popular) or mines (which are often closed after being abandoned) where they hibernate. A solution to the problem of disturbance at hibernacula is to put up gates that permit the bats to pass while excluding humans. (Thomas, 1993)", img_url:"https://static.inaturalist.org/photos/6342192/medium.jpg?1487704803", category:"mammals"},

{common_name:"Red Knot", scientific_name:"Calidris canutus rufa", status:"Threatened", threat:"The species is vulnerable to extensive land reclamation projects that encroach upon important habitat across its range. Loss of intertidal stopover habitats due to reclamation activities in the Yellow Sea region of the East Asian-Australasian Flyway is thought to be driving declines in shorebird populations. These losses are attributed to urban, industrial and agricultural expansion within the region.",  img_url:"https://ecos.fws.gov/docs/species_images/doc3682.jpg", category:"birds"},

{common_name:"Piping Plover", scientific_name:"Charadrius melodus ", status:"Threatened", threat:"Drought, inappropriate water and beach management, gas / oil industry dredging operations, development, shoreline stabilisation and beach disturbance (including cat and dog predation, and possibly that from native avian species and ghost crabs) are key threats (Hecht 1995, J. H. Plissner in litt. 1999, Elias et al. 2000, Boettcher et al. 2007). Leg related injuries, reducing fitness, have been recorded in birds fitted with anodised aluminium rings (Amirault et al. 2006). Coastal flooding driven by climate change has been noted to cause reduced reproductive success in Virginia, and its importance is likely to increase (Boettcher et al. 2007).", img_url:"https://ecos.fws.gov/docs/species_images/doc3770.jpg", category:"birds"},

{common_name:"Hawksbill Turtle", scientific_name:"Eretmochelys imbricata", status:"Critically Endangered", threat:"Tortoiseshell Trade. Recent and historical tortoiseshell trade statistics are key to understanding the enormous and enduring effect that trade has had on Hawksbill populations around the world . Significant domestic trade in Hawksbill products continues to be a major problem in many countries and, despite international and domestic prohibitions and the lessening of the volume in the last decade, trade remains an ongoing and pervasive threat in the Americas and southeast Asia.", img_url:"https://ecos.fws.gov/docs/species_images/doc4876.jpg", category:"reptiles"},

{common_name:"Leatherback Sea Turtle", scientific_name:"Dermochelys coriacea", status:"Critically Endangered", threat:"	1) Fisheries bycatch: incidental capture of marine turtles in fishing gear targeting other species;
2) Take: direct utilization of turtles or eggs for human use (i.e. consumption, commercial products);
3) Coastal Development affecting critical turtle habitat: human-induced alteration of coastal environments due to construction, dredging, beach modification, etc.;
4) Pollution and Pathogens: marine pollution and debris that affect marine turtles (i.e. through ingestion or entanglement, disorientation caused by artificial lights), as well as impacts of pervasive pathogens (e.g. fibropapilloma virus) on turtle health;
5) Climate change: current and future impacts from climate change on marine turtles and their habitats (e.g. increasing sand temperatures on nesting beaches affecting hatchling sex ratios, sea level rise, storm frequency and intensity affecting nesting habitats, etc.).
", img_url:"https://ecos.fws.gov/docs/species_images/doc3727.jpg", category:"reptiles"},

{common_name:"Bog Turtle", scientific_name:"Clemmys muhlenbergii", status:"Threatened", threat:"Much Bog Turtle habitat has been destroyed by drainage and conversion in recent centuries as its wetland habitat is generally located in optimal agricultural soils and landscapes, processes that continue to some extent into the present. Being often located at the lower edges of intensively farmed lands, sedimentation and agrochemical run-off into wetland habitat is an issue.", img_url:"https://ecos.fws.gov/docs/species_images/doc4962.jpg", category:"reptiles"},

{common_name:"Maryland Darter", scientific_name:"Etheostoma sellare", status:"Extinct", threat:"This species probably is extinct. It was most recently confirmed from the last known location (Deer Creek) in 1986", img_url:"Darter fish with a halo swimming in the clouds", category:"fish"},

{common_name:"Northeastern beach tiger beetle", scientific_name:"Cicindela dorsalis dorsalis", status:"Threatened", threat:"All populations experience dramatic fluctuations in abundance resulting from natural and human related disturbances. In Maryland, a major threat is increased vegetation growth on the cliffs which results in reduction of the bare areas needed for adult ovipositon and larval development. A related threat at privately owned sites is construction of shoreline erosion control structures that results in cliff stabilization and vegetation growth.  Rising water levels in the Chesapeake and apparent increasing impacts from storms result in cliff erosion and breakdown. This benefits the species by reducing cliff vegetation and increasing recruitment and larval development habitat. In New England, water level fluctuations and invasive vegetation have significant impacts on some populations.", img_url:"https://ecos.fws.gov/docs/species_images/doc4860.jpg", category:"arthropod"},

{common_name:"Puritan Tiger Beetle", scientific_name:"Cicindela puritana", status:"Threatened", threat:"All populations experience dramatic fluctuations in abundance resulting from natural and human related disturbances. In Maryland, a major threat is increased vegetation growth on the cliffs which results in reduction of the bare areas needed for adult ovipositon and larval development. A related threat at privately owned sites is construction of shoreline erosion control structures that results in cliff stabilization and vegetation growth.  Rising water levels in the Chesapeake and apparent increasing impacts from storms result in cliff erosion and breakdown. This benefits the species by reducing cliff vegetation and increasing recruitment and larval development habitat. In New England, water level fluctuations and invasive vegetation have significant impacts on some populations.", img_url:"https://ecos.fws.gov/docs/species_images/doc3366.jpg", category:"arthropod"},

{common_name:"Indiana Bat", scientific_name:"Myotis sodalis", status:"Endangered", threat:"A significant threat is human disturbance at winter caves, which causes aroused bats to deplete energy reserves (Mohr 1972, Engel et al. 1976). Handling of hibernating bats by researchers may result in the bats moving to the use of less suitable hibernacula, causing additional loss of fat reserves (Jones 1971 in Engel et al. 1976).", img_url:"https://ecos.fws.gov/docs/species_images/doc4847.jpg", category:"mammals"},

{common_name:"Shortnose Sturgeon", scientific_name:"Acipenser brevirostrum", status:"Endangered", threat:"	Although some shortnose sturgeon may be harvested incidental to Atlantic sturgeon in Canada, there are no legal fisheries or by-catch allowances in U.S. waters. Principal threats to the survival of this species are blockage of up- and downstream migrations at dams, habitat loss or degradation due to dams and dam operations, river channel dredging, and pollution.", img_url:"https://ecos.fws.gov/docs/species_images/doc3737.jpg", category:"fishes"},
# Start of new species seeds
{common_name:"Cheat Mountain salamander", scientific_name:"Plethodon nettingi", status:"Threatened", threat:"	The main threat to this species is habitat loss and degradation due to logging, mining, recreational development, and road construction. Competition with Plethodon cinereous might also be a limiting factor. However, these threats are all minimal and the population is probably stable.", img_url:"https://ecos.fws.gov/docs/species_images/doc1752.jpg", category:"reptiles"},

{common_name:"Roseate tern", scientific_name:"Sterna dougallii dougallii", status:"Threatened", threat:"	Predation by rats, ferrets, red foxes and Peregrine Falcon (Falco peregrinus) occurs locally, and can have significant effects, including complete breeding failure at some Azores colonies (Avery et al. 1995). Natural predators can often take a great toll on localised colonies, particularly when terns are disturbed from the nest by other birds and humans.", img_url:"https://ecos.fws.gov/docs/species_images/doc4948.jpg", category:"birds"},

{common_name:"Florida Leafwing Butterfly", scientific_name:"Anaea troglodyta floridalis", status:"Threatened", threat:"Loss of habitat", img_url:"http://butterfliesofamerica.com/images/Nymphalidae/Charaxinae/Anaea_troglodyta_floridalis/Anaea_troglodyta_floridalis_HOLOTYPE_M_of_Anaea_aidea_floridalis-USA-FLORIDA-Miami-Dade_Co.-Florida_City_10-XII-1936-AMNH-3-sm.jpg", category:"arthropod"},

{common_name:"Miami Blue Butterfly", scientific_name:"Cyclargus (=hemiargus) thomasi bethunebakeri", status:"Endangered", threat:"	Loss of habitat", img_url:"https://ecos.fws.gov/docs/species_images/doc5110.jpg", category:"arthropod"},

{common_name:"American crocodile", scientific_name:"Crocodylus acutus", status:"Endangered", threat:"This species was hunted and overexploited for its hides in the 1930s until it was protected in the 1970s, however, illegal hunting still occurs. It is also threatened by habitat degradation from coastal development, including destruction of nesting grounds and the destruction of mangrove swamps for shrimp aquaculture.", img_url:"https://ecos.fws.gov/docs/species_images/doc3726.jpg", category:"reptiles"},

{common_name:"Okaloosa Darter", scientific_name:"Etheostoma okaloosae", status:"Threatened", threat:"Competitive interactions with introduced Etheostoma edwini may affect the distribution and abundance of E. okaloosae in some areas while in other areas habitat degradation may be more influential in the distributions of the two species (Burkhead et al. 1992); however, available evidence indicates that E. edwini is not negatively affecting E. okaloosae in most areas.
", img_url:"https://ecos.fws.gov/docs/species_images/doc4879.jpg", category:"fishes"},

{common_name:"Key Deer", scientific_name:"Odocoileus virginianus clavium", status:"Endangered", threat:"hunting", img_url:"https://ecos.fws.gov/docs/species_images/doc4914.jpg", category:"mammals"},

{common_name:"West Indian Manatee", scientific_name:"Trichechus manatus", status:"Vulnerable", threat:"About half of adult mortality rangewide is attributable to human-related causes, primarily watercraft collisions (Ackerman et al. 1995, Deutsch et al. 2002). This is significant because the manatee population growth rate is highly sensitive to changes in adult survival rate (Eberhardt and O’Shea 1995, Marmontel et al. 1997, Runge et al. 2004). The future of the Florida manatee is also jeopardized by the predicted loss and deterioration of warm-water habitat, including retirement or deregulation of aging power plants and reduction in natural spring flows.", img_url:"https://ecos.fws.gov/docs/species_images/doc3661.jpg", category:"mammals"},

{common_name:"Anastasia Island Beach Mouse", scientific_name:"Peromyscus polionotus phasma", status:"Endangered", threat:"Predation", img_url:"https://ecos.fws.gov/docs/species_images/doc1970.jpg", category:"mammals"},

{common_name:"Perdido Key Beach Mouse", scientific_name:"Peromyscus polionotus trissyllepsis", status:"Endangered", threat:"Predation", img_url:"https://ecos.fws.gov/docs/species_images/doc4484.bmp", category:"mammals"},

{common_name:"Southeastern Beach Mouse", scientific_name:"Perromyscus pollionotus niveiventris", status:"Threatened", threat:"Predation", img_url:"https://ecos.fws.gov/docs/species_images/doc1971.jpg", category:"mammals"},

{common_name:"Florida Panther", scientific_name:"Puma (=felis) concolor coryi", status:"Endangered", threat:"Human Predation and habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc3663.jpg", category:"mammals"},

{common_name:"Lower Keys Marsh Rabbit", scientific_name:"Sylvilagus palustris hefneri", status:"Endangered", threat:"Predation and habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc5036.jpg", category:"mammals"},

{common_name:"Frosted Flatwoods salamander", scientific_name:"Ambystoma cingulatum", status:"XXX", threat:"Potential threats include conversion of pine flatwoods habitat for agriculture, silviculture, or commercial/residential development; drainage or enlargement (with subsequent introduction of predatory fishes) of breeding ponds; habitat alteration resulting from suppression of fire; mortality and collecting losses associated with crayfish harvest; and highway mortality during migration.
", img_url:"http://calphotos.berkeley.edu/imgs/512x768/1111_1111/1111/4649.jpeg", category:"reptiles"},

{common_name:"Smalltooth Sawfish", scientific_name:"Pristis pectinata", status:"Critically Endangered", threat:"The principal threats to Smalltooth Sawfish are from fishing; it was formerly targeted, but is now mostly taken incidentally in broad-spectrum fisheries (CITES 2007). The long toothed rostrum of sawfish makes them extremely vulnerable to entanglement in any sort of net gear, gillnetting and trawling in particular. ", img_url:"https://ecos.fws.gov/docs/species_images/doc1736.jpg", category:"fish"},

{common_name:"Florida scrub-jay", scientific_name:"Aphelocoma coerulescens", status:"Vulnerable", threat:"Fire suppression in remaining habitat has been identified as a major continuing threat because it causes scrub to overgrow and pine density to increase, rendering habitat unsuitable. Declines on lands specifically protected for the species are largely the result of reduced habitat quality, caused by disrupted fire regimes (Breininger et al. 1999, 2006, 2009, 2010).", img_url:"https://ecos.fws.gov/docs/species_images/doc4851.jpg", category:"birds"},

{common_name:"Green Sea Turtle", scientific_name:"Chelonia mydas", status:"Endangered", threat:"Hunting, poaching, egg harvesting, boat strikes, pollution, and fishermen nets", img_url:"https://ecos.fws.gov/docs/species_images/doc3724.jpg", category:"reptiles"},

{common_name:"Sand skink", scientific_name:"Neoseps reynoldsi", status:"Threatened", threat:"This species is threatened by habitat destruction for commercial and residential development, agricultural (citrus) development (USFWS 1987), and phosphate mining. Conversion of habitat to citrus production is the primary threat (P. Moler pers. comm. 1995). Habitat degradation due to fire exclusion is another threat (USFWS 1998).", img_url:"https://ecos.fws.gov/docs/species_images/doc5037.jpg", category:"reptiles"},

{common_name:"Eastern Indigo Snake", scientific_name:"Drymarchon corais couperi", status:"Threatened", threat:"Decline is attributed to loss of mature longleaf pine habitat (e.g., conversion to slash and sand pine plantation, urbanization, citrus, mining, etc.), commercial collecting for pet trade (now illegal and has declined), and former widespread gassing of tortoise burrows (to collect rattlesnakes) (USFWS 1998). ", img_url:"https://ecos.fws.gov/docs/species_images/doc3730.jpg", category:"reptiles"},

{common_name:"Cape Sable Seaside sparrow", scientific_name:"Ammodramus maritimus mirabilis", status:"Endangered", threat:"Predation and habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc5035.jpg", category:"birds"},

{common_name:"Florida Grasshopper sparrow", scientific_name:"Ammodramus savannarum floridanus", status:"Endangered", threat:"Predation and habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc5034.jpg", category:"birds"},

{common_name:"Wood Stork", scientific_name:"Mycteria americana", status:"Threatened", threat:"Habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc5013.jpg", category:"birds"},

{common_name:"Bachman's Warbler", scientific_name:"Vermivora bachmanii", status:"Critically Endangered", threat:"Habitat loss", img_url:"https://identify.whatbird.com/img/4/63878/image.aspx", category:"birds"},

{common_name:"Red wolf", scientific_name:"Canis rufus", status:"Critically Endangered", threat:"Hybridization with Coyotes or Red Wolf x Coyote hybrids is the primary threat to the species' persistence in the wild (Kelly et al. 1999). While hybridization with Coyotes was a factor in the Red Wolf's initial demise in the wild, it was not detected as a problem in north-eastern North Carolina until approximately 1992 (Phillips et al. 1995). Indeed, northeastern North Carolina was determined to be ideal for Red Wolf reintroductions because of a purported absence of coyotes (Parker 1986)", img_url:"https://ecos.fws.gov/docs/species_images/doc4996.jpg", category:"mammals"},

{common_name:"Red-cockaded Woodpecker", scientific_name:"Picoides borealis", status:"threatened", threat:"Because of its biology and dependence on old-growth forest, this species is said to be uniquely susceptible to rapid declines under inappropriate management regimes (J. R. Walters in litt. 2013). The long-term clearance and economic management of habitat has reduced the viability of all populations.", img_url:"https://ecos.fws.gov/docs/species_images/doc3700.jpg", category:"birds"},

{common_name:"Kemp's Ridley Sea Turtle", scientific_name:"Lepidochelys kempii", status:"Threatened", threat:"Habitat loss", img_url:"https://iucnredlist-photos.s3.amazonaws.com/thumb/787195903.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519497267&Signature=7UnnHZuyDxAoMIs3My5lc08EcuY%3D", category:"reptiles"},

{common_name:"Loggerhead Sea Turtle", scientific_name:"Caretta caretta", status:"Endangered", threat:"Threats to Loggerheads vary in time and space, and in relative impact to populations", img_url:"https://ecos.fws.gov/docs/species_images/doc3723.jpg", category:"reptiles"},

{common_name:"Blue Shiner", scientific_name:"Cyprinella caerulea", status:"Threatened", threat:"Declines have been caused by water pollution, siltation, and construction of reservoirs for hydropower, navigation, and flood control (USFWS 1995, End. Sp. Tech. Bull. 16[5]:8). These degraded/destroyed the habitat and fragmented the populations. Current concerns include siltation and excessive nutrient inputs deriving from runoff from small-scale agriculture, grazing, and urbanization (USFWS 1995, J. M. Pierson pers. comm. 1995).", img_url:"http://www.outdooralabama.com/sites/default/files//fishing/images/Shinerblue400A.jpg", category:"fishes"},

{common_name:"Fin Whale", scientific_name:"Balaenoptera physalus", status:"Endangered", threat:"Prior to the advent of modern whaling in the late 19th century, Fin Whales were largely immune from human predation because they were too hard to catch. Fin Whales were depleted worldwide by commercial whaling in the 20th century. Fin Whales have been protected in the Southern Hemisphere and North Pacific since 1975, and catches ceased in the North Atlantic by 1990, except for small “aboriginal subsistence” catches off Greenland", img_url:"https://s-media-cache-ak0.pinimg.com/originals/7b/6a/fb/7b6afbddef555919975b869ed0021baf.jpg", category:"mammals"},

{common_name:"North Atlantic right Whale", scientific_name:"Eubalaena glacialis", status:"Endangered", threat:"Right Whales in the North Atlantic are no longer hunted, and the most serious current threat is death or injury from entanglements in fishing gear and collisions with ships off the eastern coast of North America (Knowlton and Kraus 2001, Kraus and Rolland 2007).
", img_url:"https://iucnredlist-photos.s3.amazonaws.com/thumb/1644313283.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519481999&Signature=%2FI9fvxUw%2BEy%2BcVemWmwlePKEmy0%3D", category:"mammals"},

{common_name:"Rusty Patched Bumble Bee", scientific_name:"Bombus affinis", status:"Endangered", threat:"The primary threats attributed to the severe decline of Bombus affinis include pathogen spill-over from commercial to wild bees; habitat loss due to agriculture and development; pesticide use; and climate change (reviewed in Jepsen et al. 2013). Reduced genetic diversity, which can be a result of declining, isolated subpopulations caused by any of the aforementioned factors, likely also threatens this species (reviewed in Jepsen et al. 2013). ", img_url:"https://ecos.fws.gov/docs/species_images/doc5094.jpg", category:"arthropod"},

{common_name:"Atlantic Salmon", scientific_name:"Salmo salar", status:"Endangered", threat:"Human consumption", img_url:"https://ecos.fws.gov/docs/species_images/doc4936.jpg", category:"fishes"},

{common_name:"Canada Lynx", scientific_name:"Lynx canadensis", status:"Threatened", threat:"In most of Canada and Alaska, trapping of lynx for the fur trade is managed through regulated seasons. Trapping can reduce lynx populations and can have the greatest impact when hare populations cyclically crash. In the 1980s, in response to concerns about over-harvest during the cyclic low of the lynx-hare cycle, Alaska and most Canadian provinces modifying seasons or bag limits to match harvest with lynx population levels and trends (Golden 1999, Mowat et al. 2000)", img_url:"https://ecos.fws.gov/docs/species_images/doc4979.jpg", category:""},

{common_name:"American Burying Beetle", scientific_name:"Nicrophorus americanus", status:"Critically Endangered", threat:"Habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc5109.jpg", category:"arthropod"},

{common_name:"Plymouth redbelly Turtle", scientific_name:"Pseudemys rubriventris bangsi)", status:"Endangered", threat:"Habitat loss", img_url:"http://www.biologicaldiversity.org/campaigns/esa_works/gallery/images2/NorthernRed-BelliedCooter_JohnWhite_VirginiaHerpetologicalSociety.jpg", category:"reptiles"},

{common_name:"Karner Blue Butterfly", scientific_name:"Lycaeides melissa samuelis", status:"Endangered", threat:"Habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc4905.jpg", category:"arthropod"},

{common_name:"Virginia Big Eared Bat", scientific_name:"Corynorhinus (=plecotus) townsendii virginianus", status:"Endangered", threat:"Use of chemical and biological insecticides is another source of concern affecting their food supply. A less vital, yet very real threat to M. septentrionalis is the disturbance they face in the caves (where recreational 'caving' is popular) or mines (which are often closed after being abandoned) where they hibernate.", img_url:"http://www.planet-mammiferes.org/Photos/Volants/Vespert/PlecTow2.jpg", category:"mammals"},

{common_name:"Spotfin Chub", scientific_name:"Erimonax monachus", status:"Threatened", threat:"Range may have been more continuous before extensive deforestation and impoundment (Jenkins and Burkhead 1994). Causes of decline include siltation, coal sedimentation, pollution, inundation by reservoir development, releases of cold water from reservoirs, stream channelization, and interspecific competition (USFWS 1983; Jenkins and Burkhead 1984); some of these factors affect extant populations (Jenkins and Burkhead 1994). Collecting may significantly reduce local subpopulations (Burkhead and Jenkins 1991).
", img_url:"https://cff2.earth.com/uploads/2017/01/03143939/Erimonax-monachus.jpg", category:"fishes"},

{common_name:"Roanoke logperch", scientific_name:"Percina rex", status:"Predation", threat:"Decline over the long term likely resulted from reservoir creation and widespread siltation caused by land development and agricultural activities (USFWS 2007). The upper Roanoke River population is threatened by ongoing urbanization, industrial development, water supply and flood control projects, and agricultural runoff in the upper basin (USFWS 1991, 2007); known threats continue to exist in the Roanoke River drainage (USFWS 2007). Smith River population is threatened by operation of Philpott Dam and by continued siltation from upstream agriculture (USFWS 2007). Threats (mainly siltation) in the Nottoway River recently have decreased (see USFWS 2007). Other populations are subject to siltation from agricultural and other human activities and to potential chemical spills.", img_url:"https://upload.wikimedia.org/wikipedia/commons/1/1a/Percina_rex.jpg", category:"fishes"},

{common_name:"Cape Fear Shiner", scientific_name:"Notropis mekistocholas", status:"Endangered", threat:"Threats include deterioration of water quality due to toxic chemical pollution, changes in stream flow, channel modification, siltation, and impoundments (North Carolina Natural Heritage Program).
", img_url:"https://static.wixstatic.com/media/6f2f2b_6616514e0ead4e6ba7a66456da14769b.jpg_srz_557_369_85_22_0.50_1.20_0.00_jpg_srz", category:"fishes"},

{common_name:"Spruce Fir Spider", scientific_name:"Microhexura montivaga", status:"Threatened", threat:"habitat loss", img_url:"https://upload.wikimedia.org/wikipedia/commons/3/39/Spruce_Fir_Moss_Spider.jpg", category:"arthropod"},

{common_name:"Atlantic Sturgeon", scientific_name:"Acipenser oxyrinchus ", status:"Endangered", threat:"Atlantic sturgeon were an important item of commerce to early American and Canadian colonists and large quantities of meat, roe, oil and isinglass were exported to Europe late 17th and 18th centuries. As flesh and roe (caviar) gained popularity in North American, the species was heavily exploited, particularly during several decades of the late nineteenth century.
", img_url:"https://upload.wikimedia.org/wikipedia/commons/8/87/Acipenser_oxyrinchus_BM.jpg", category:"fishes"},

{common_name:"Culebra Giant Anole", scientific_name:"Anolis roosevelti", status:"Critically Endangered", threat:"The reasons for the species' decline and possible extinction are unknown.", img_url:"http://www.anoleannals.org/wp-content/uploads/2013/11/cuvieri-sleeping-brown-sanchez.jpg", category:"reptiles"},

{common_name:"Yellow-Shouldered Blackbird", scientific_name:"Agelaius xanthomus", status:"Endangered", threat:"Habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc3676.jpg", category:"birds"},

{common_name:"Black Pine Snake", scientific_name:"Pituophis melanoleucus lodingi", status:"Threatened", threat:"Habitat loss", img_url:"http://www.freewebs.com/slitherbriggs/Pituophis%20melanoleucus%20lodingi%20YOUNG%20with%20light%20pattern%20Photo%20by%20Patrick%20Houston%20Briggs%20crtsy%20Rick%20Smith%20prnt%20scn.JPG", category:"reptiles"},

{common_name:"Pallid Sturgeon", scientific_name:"Scaphirhynchus albus", status:"Endangered", threat:"Habitat modification, including the construction of six main stem dams on the Missouri River and extensive channelisation in the lower Missouri and Mississippi Rivers, is the primary factor affecting the continued existence of this species.", img_url:"http://www.tnaqua.org/images/uploads/our_animals/Pallid-sturgeon_1200x490.jpg", category:"fishes"},

{common_name:"Least Tern", scientific_name:"Sterna antillarum", status:"Endangered", threat:"Habitat loss", img_url:"http://avesphoto.com/website/pictures/TRNLST-1.jpg", category:"birds"},

{common_name:"Ringed Map turtle", scientific_name:"Graptemys oculifera", status:"Threatened", threat:"Over 21% of the range of Graptemys oculifera had already been channelized by 1986. Plans for channelization of an additional 28% of the Pearl River and over 160 km of the Bogue Chitto river, while not executed, have not been entirely rescinded and remain as a significant potential threat (Jones and Selman 2009).", img_url:"http://www.louisianaherps.com/_Media/dsc04481_med.jpeg", category:"reptiles"},

{common_name:"Gopher tortoise", scientific_name:"Gopherus polyphemus", status:"Vulnerable", threat:"Habitat loss", img_url:"https://upload.wikimedia.org/wikipedia/commons/b/b2/Big_Boy_%28_Gopherus_Polyphemus_from_New_Smyrna_Beach%2C_Florida_%29_-_Flickr_-_Andrea_Westmoreland.jpg", category:"reptiles"},

{common_name:"Hine's Emerald Dragonfly", scientific_name:"Somatochlora hineana", status:"Threatened", threat:"Extant occurrences are threatened by the following activities: petroleum refineries and other heavy industry, a proposed highway project, quarrying, urban non-point water pollution, and ATV use in Illinois; agricultural non-point water pollution (surface and groundwater) and recreational development in Wisconsin. Most significant threats are habitat/alteration/destruction from development of commercial and residential areas, quarrying, creating landfills, constructing pipelines, and filling of wetlands (Zercher 2001).", img_url:"http://www.biologicaldiversity.org/assets/img/species/invertebrates/HinesEmeraldDragonfly_PaulBurton.jpg", category:"arthropod"},

{common_name:"Gray Wolf", scientific_name:"Canis lupus", status:"Endangered", threat:"Their original worldwide range has been reduced by about one-third, primarily in developed areas of Europe, Asia, Mexico, and the United States by poisoning and deliberate persecution due to depredation on livestock. Since about 1970, legal protection, land-use changes, and rural human population shifts to cities have arrested wolf population declines and fostered natural recolonization in parts of Western Europe and the United States, and reintroduction in the western United States. Continued threats include competition with humans for livestock, especially in developing countries, exaggerated concern by the public concerning the threat and danger of wolves, and fragmentation of habitat, with resulting areas becoming too small for populations with long-term viability.", img_url:"https://ecos.fws.gov/docs/species_images/doc3630.jpg", category:"mammals"},

{common_name:"Illinois Cave Arthopod", scientific_name:"Gammarus acherondytes", status:"Endangered", threat:"Habitat loss", img_url:"http://oceanexplorer.noaa.gov/explorations/05deepcorals/logs/nov8/media/fig4amphipod_600.jpg", category:""},

{common_name:"Copperbellied Water Snake", scientific_name:"Nerodia erythrogaster neglecta", status:"Threatened", threat:"Habitat loss", img_url:"http://www.ectotherms.net/gallery/main.php?g2_view=core.DownloadItem&g2_itemId=1173&g2_serialNumber=3", category:"reptiles"},

{common_name:"Dakota Skipper", scientific_name:"Hesperia dacotae", status:"Vulnerable", threat:"Habitat loss", img_url:"https://www.fws.gov/midwest/Endangered/images/insects/dask/FirstDASKMaleRearedMNZooJune2014ByErikRunquist.jpg", category:"arthropod"},

{common_name:"Sciotio Madtom", scientific_name:"Noturus trautmani", status:"Endangered", threat:"Habitat loss", img_url:"http://www.fishbase.org/images/species/Nomiu_u0.jpg", category:"fishes"},

{common_name:"Mississippi Sandhill crane", scientific_name:"Grus canadensis pulla", status:"Endangered", threat:"Habitat loss", img_url:"https://ecos.fws.gov/docs/species_images/doc4896.jpg", category:"birds"},

{common_name:"Dusky Gopher Frog", scientific_name:"Rana sevosa", status:"Endangered", threat:"Major threats include population isolation (inbreeding and susceptibility to catastrophic events), urbanization, two diseases, and apparent lack of a nearby suitable habitat. The range has been significantly reduced as a result of habitat destruction, fragmentation, and modification.", img_url:"https://ecos.fws.gov/docs/species_images/doc1756.jpg", category:"reptiles"},

{common_name:"Hungerford's Crawling Water Beetle", scientific_name:"Brychius hungerfordi", status:"Endangered", threat:"Predation", img_url:"https://ecos.fws.gov/docs/species_images/doc4853.jpg", category:"arthropod"},

{common_name:"Blackside dace", scientific_name:"Phoxinus cumberlandensis", status:"Threatened", threat:"Threatened status is due primarily to impacts of siltation from coal mining, silviculture, agriculture, and road construction, and impacts of unregulated acid mine drainage and impoundments; these factors still constitute a threat.", img_url:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQb8vRAoz1ZLrdtgsl1KnjbQX45x45KbS2yotw5q0w5oI4zhaY_", category:"fishes"},




























])
