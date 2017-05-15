# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Species.destroy_all
Comment.destroy_all

birds= Category.create! ({customizable: false, name: "birds"})
mammals= Category.create! ({customizable: false, name: "mammals"})
fish= Category.create! ({customizable: false, name: "fish"})
reptiles= Category.create! ({customizable: false, name: "reptiles"})
amphibians= Category.create! ({customizable: false, name: "amphibians"})
insects= Category.create! ({customizable: false, name: "insects"})

species= Species.create!([
    {common_name:"Mitchell's satyr", scientific_name: "Neonympha mitchellii", status: "Endangered", threat:"Habitat Loss and Degradation; Exotic Weed Invasion; Pesticides / Pollutants; Butterfly Collectors", img_url: "https://mnfi.anr.msu.edu/element-images/1763.jpg", category: insects },
    {common_name:"Puritan tiger beetle", scientific_name: "Cicindela puritana", status: "Endangered ", threat:"Habitat Loss and Degradation; Flooding; Parasites; Insect Predators", img_url: "http://i5.photobucket.com/albums/y196/Garfman/puritana202f5581.gif", category: insects },
    {common_name:"Shenandoah salamander", scientific_name: "Plethodon shenandoah", status: "Endangered ", threat:"Infestation by non-native insects/disease; restricted range of habitat", img_url: "http://www.virginiaherpetologicalsociety.com/amphibians/salamanders/shenandoah-salamander/Shenandoah%20Salamander%20(Plethodon%20shenandoah)0002.JPG", category: amphibians },
    {common_name:"Spotfin chub", scientific_name: "Cyprinella monacha", status: "Vunerable ", threat:"Habitat loss, sedimentation, and dams", img_url: "https://static.wixstatic.com/media/6f2f2b_cc97e5c302fc44d78d83128b50f1d4bb.jpg_srz_541_419_85_22_0.50_1.20_0.00_jpg_srz", category: fish },
    {common_name:"Duskytail darter", scientific_name: "Etheostoma percnurum", status: "Endangered ", threat:"Impoundment of waterways, increased silt, logging, coal mining and disease", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Etheostoma_percnurum.jpg/1024px-Etheostoma_percnurum.jpg", category: fish },
    {common_name:"Bog turtle", scientific_name: "Glyptemys muhlenbergii", status: "Critically Endangered ", threat:"Invasive Plants, Urban Development, and Black Market pet trade", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Bog_Turtle.jpg/800px-Bog_Turtle.jpg", category: reptiles },
    {common_name:"Green sea turtle", scientific_name: "Chelonia mydasa", status: "Endangered ", threat:"Hunting, poaching, egg harvesting, boat strikes, pollution, fishermen nets, fibropapillomatosis.", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Green_turtle_swimming_over_coral_reefs_in_Kona.jpg/1024px-Green_turtle_swimming_over_coral_reefs_in_Kona.jpg", category: reptiles },
    {common_name:"Piping plover", scientific_name: "Charadrius melodus", status: "Endangered ", threat:"Habitat destruction has been the primary cause of population decline", img_url: "http://greglasley.com/images/P/Piping%20Plover%200057.jpg", category: birds },
    {common_name:" Northern long-eared Bat", scientific_name: "Myotis septentrionalis", status: "Vulnerable", threat:" Habitat destruction has been the primary cause of population decline.", img_url: "http://www.fnanaturesearch.org/images/stories/ns/marked/M/4995.jpg", category: mammals },
    {common_name:"Virginia Northern flying squirrel ", scientific_name: "Glaucomys sabrinus", status: "Endangered ", threat:"Habitat destruction has been the primary cause of population decline. ", img_url: "http://www.alleghenyclimate.org/images/wvnfs.jpg", category: mammals },
    {common_name:"Gray bat", scientific_name:"Myotis grisescens", status: "Endangered ", threat:"Cave Distrubance, Deforestation", img_url: "https://ecos.fws.gov/docs/species_images/doc1480.jpg", category: mammals },
    {common_name:"Indiana bat ", scientific_name: "myotis sodalis", status: "Endangered ", threat:"A significant threat is human disturbance at winter caves, which causes aroused bats to deplete energy reserves", img_url: "https://ecos.fws.gov/docs/species_images/doc3621.jpg", category: mammals },
    {common_name:"Rusty patched bumble bee", scientific_name: "Bombus affinis", status: "Endangered ", threat:"pathogen spill-over from commercial to wild bees; habitat loss due to agriculture and development; pesticide use; and climate change ", img_url: "https://ecos.fws.gov/docs/species_images/doc5094.jpg", category: insects },
    {common_name:"Big Sandy crayfish ", scientific_name: "Cambarus callainus", status: "Threatened ", threat:"extractive industry, logging and road construction. This has caused fragmentation and degradation of habitat that has historically been used by this species. ", img_url: "https://upload.wikimedia.org/wikipedia/commons/2/27/Chattooga_River_Crayfish_%2814174938652%29.jpg", category: fish},
    {common_name:"Red knot ", scientific_name: "Calidris canutus", status: "Threatened", threat:"The species is vulnerable to extensive land reclamation projects that encroach upon important habitat across its range", img_url: "https://iucnredlist-photos.s3.amazonaws.com/thumb/2051202294.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519468913&Signature=LQTFqyqnzRwZfGcvEo49ldV04f8%3D", category: birds },
    {common_name:"Yellowfin madtom ", scientific_name: "Noturus flavipinnis", status: "Vulnerable", threat:"impoundments, chemical spills, mining, dredging, and pollution ", img_url: "https://www.floridamuseum.ufl.edu/catfish/ictaluridae/flavipinnis2.jpg", category: fish},
    {common_name:"Hawksbill sea turtle", scientific_name: "Eretmochelys imbricata", status: "Endangered ", threat:"trade, egg collection, slaughter for meat, habitat destruction. ", img_url: "https://iucnredlist-photos.s3.amazonaws.com/thumb/2004675535.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519466484&Signature=rDxqGgiMny1Aqj0K11yIhgsn45g%3D", category: reptiles },
    {common_name:"Kemp's Ridley sea turtle ", scientific_name: "Lepidochelys kempii", status: "Endangered ", threat:"Habitat loss, pollution, shrimping nets ", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Lepidochelys_kempii.jpg/220px-Lepidochelys_kempii.jpg", category: reptiles},
    {common_name:"Spruce fir-moss spider ", scientific_name: "Microhexura montivaga", status: "Endangered ", threat:"The widespread death of Fraser fir trees has destroyed many habitats for the spiders, and they were listed as endangered in 1995. Many Fraser firs have died due to infestation with Adelges piceae, the balsam woolly adelgid, an insect pest introduced from Europe. ", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Spruce_Fir_Moss_Spider.jpg/180px-Spruce_Fir_Moss_Spider.jpg", category: insects },
    {common_name:"Roseate tern ", scientific_name: "Sterna dougallii", status: "Endangered ", threat:"hunting in the wintering quarters may be the most significant ", img_url: "https://ecos.fws.gov/docs/species_images/doc4948.jpg", category: birds },
    {common_name:"Red cockaded woodpecker", scientific_name: "Picoides borealis", status: "Endangered ", threat: "Because of its biology and dependence on old-growth forest, this species is said to be uniquely susceptible to rapid declines under inappropriate management regimes", img_url: "https://iucnredlist-photos.s3.amazonaws.com/thumb/135092392.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519480491&Signature=1jr2dw0w%2F5CNDfYOOEIdPKx8FFM%3D", category: birds },
    {common_name:"Leatherback sea turtle", scientific_name: "Dermochelys coriacea", status: "Endangered ", threat:" incidental capture of marine turtles in fishing gear targeting other species,  direct utilization of turtles or eggs for human use, coastal development", img_url: "https://ecos.fws.gov/docs/species_images/doc3727.jpg", category: reptiles },
    {common_name:"Shortnose sturgeon", scientific_name:"Acipenser brevirostrum", status:"Endangered", threat:"    Although some shortnose sturgeon may be harvested incidental to Atlantic sturgeon in Canada, there are no legal fisheries or by-catch allowances in U.S. waters. Principal threats to the survival of this species are blockage of up- and downstream migrations at dams, habitat loss or degradation due to dams and dam operations, river channel dredging, and pollution.", img_url: "https://ecos.fws.gov/docs/species_images/doc3737.jpg", category: fish},
    {common_name:"Northeastern Beach tiger beetle", scientific_name:"Cicindela dorsalis", status:"Threatened", threat:"All populations experience dramatic fluctuations in abundance resulting from natural and human related disturbances. In Maryland, a major threat is increased vegetation growth on the cliffs which results in reduction of the bare areas needed for adult ovipositon and larval development. A related threat at privately owned sites is construction of shoreline erosion control structures that results in cliff stabilization and vegetation growth.  Rising water levels in the Chesapeake and apparent increasing impacts from storms result in cliff erosion and breakdown. This benefits the species by reducing cliff vegetation and increasing recruitment and larval development habitat. In New England, water level fluctuations and invasive vegetation have significant impacts on some populations", img_url: "https://ecos.fws.gov/docs/species_images/doc4860.jpg", category: insects},
    {common_name:"Maryland Darter", scientific_name:"Etheostoma sellare", status:"Extinct", threat:"This species probably is extinct. It was most recently confirmed from the last known location (Deer Creek) in 1986", img_url:"http://dnr2.maryland.gov/wildlife/PublishingImages/MD_Darter_Dave_Neely.jpg", category: fish},
    {common_name:"Waccamaw silverside", scientific_name: "Menidia extensa", status: "Threatened", threat:"Threatened by the usual problems associated with limited distribution and by increased nutrient loading", img_url: "http://www.fishbase.org/images/species/Mepen_u0.jpg", category: fish },
    {common_name:"Loggerhead sea turtle", scientific_name: "Caretta caretta", status: "Endangered ", threat:"Fisheries bycatch: incidental capture of marine turtles in fishing gear targeting other species; Take: direct utilization of turtles or eggs for human use (i.e., consumption, commercial products); Coastal Development affecting critical turtle habitat", img_url: "https://ecos.fws.gov/docs/species_images/doc3723.jpg", category: amphibians },
    {common_name:"Golf sturgeon", scientific_name: "Acipenser oxyrinchus", status: "Threatened ", threat:"sturgeon breeding habitats have been adversely impacted by dams, siltation, channel maintenance (dredging) and water pollution.", img_url: "https://upload.wikimedia.org/wikipedia/commons/8/87/Acipenser_oxyrinchus_BM.jpg", category: fish },
    {common_name:"Red Wolf", scientific_name: "Canis rufus", status: "Critically Endangered ", threat:"Hybridization with Coyotes or Red Wolf x Coyote hybrids is the primary threat to the species' persistence in the wild", img_url: "http://i.imgur.com/iWEgb.jpg", category: mammals },
    {common_name:"West Indian Manatee", scientific_name: "Trichechus manatus", status: "Vulnerable", threat:"Vessel collisions and entrapment in water control structures", img_url: "https://ecos.fws.gov/docs/species_images/doc3661.jpg", category: mammals },
    {common_name:"Nashville Crayfish", scientific_name: "Orconectes shoupi", status: "Endangered ", threat:"There are some concerns for this species due to urban development and stream modifications such as dry-bed retention dams in the Mill Creek drainage ", img_url: "https://www.gannett-cdn.com/-mm-/c9cbf9886e1b3061af19f620347210449c6392c0/c=95-0-1090-747&r=x408&c=540x405/local/-/media/Nashville/2014/06/23/nas-damremoval-02.jpg", category: fish },
    {common_name:"Blackside Dace", scientific_name: "Phoxinus cumberlandensis", status: "Endangered ", threat:"Threatened status is due primarily to impacts of siltation from coal mining, silviculture, agriculture, and road construction, and impacts of unregulated acid mine drainage and impoundments; these factors still constitute a threat", img_url: "https://static.wixstatic.com/media/6f2f2b_e61c7172262c4904afb3c0d0bd4a3155.jpg_srz_681_326_85_22_0.50_1.20_0.00_jpg_srz", category: fish },
    {common_name:"Laurel Dace", scientific_name: "Chrosomus saylori", status: "Endangered ", threat:"Individual populations appear to be healthy but are vulnerable to extirpation by a single event such as a chemical spill; possible threats include siltation due to clearcutting and agricultural practices and the possible construction of a reservoir on Horn Branch", img_url: "https://clinchchronicle.files.wordpress.com/2014/02/mtnreddace.jpg", category: fish },
    {common_name:" Amber darter", scientific_name: "Percina antesella", status: "Endangered", threat:" Amber Darters are vulnerable to loss of quality habitat resulting from suburban and urban development", img_url: "http://upload.wikimedia.org/wikipedia/commons/4/43/Percina_antesella01.jpg", category: fish },
    {common_name:"Bluemask darter ", scientific_name: "Etheostoma akatulo", status: "Endangered ", threat:"Some areas were inundated by the Great Falls Reservoir in the 1910s. The habitat continues to be negatively affected by deterioration of water quality resulting from siltation, pesticides, and other pollutants contributed by coal mining, gravel mining, poor land use practices, and waste discharges", img_url: "https://mongabay-images.s3.amazonaws.com/15/0406-darter.png", category: fish },
    {common_name:"Boulder darter", scientific_name:"Etheostoma wapiti", status: "Vulnerable ", threat:"Endangered status is primarily due to restricted distribution and loss of habitat by impoundment", img_url: "http://www.natgeocreative.com/comp/04/445/1436116.jpg", category: fish },
    {common_name:"Cumberland darter ", scientific_name: "Etheostoma susanae", status: "Endangered ", threat:"Habitat loss and modification represent significant threats to the Cumberland darter. Severe degradation from sedimentation, physical habitat disturbance, and contaminants threatens the habitat and water quality on which the Cumberland Darter depends. ", img_url: "http://1.bp.blogspot.com/-n1buwtI-1lI/UJfW3sYIKqI/AAAAAAAAADY/aCfpExH7-bM/s1600/Fig-14-wEtheostoma-jimmycarter.jpg", category: fish },
    {common_name:"Conasauga Logperch", scientific_name: "Percina jenkinsi", status: "Critically Endangered ", threat:"Potential threats include siltation and agricultural and urban runoff from adjacent developed areas; small range makes this species vulnerable to a single catastrophic event such as a chemical spill. Pollution, floods, droughts ", img_url: "https://upload.wikimedia.org/wikipedia/commons/f/fb/Percina_jenkinsi.jpg", category: fish },
    {common_name:"Chucky Madtom ", scientific_name: "Noturus crypticus", status: "Critically Endangered", threat:"Little Chucky Creek drains a highly agricultural watershed, and silt and agricultural chemicals have been implicated in the decline of other madtom species. Sedimentation and water degredation ", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Noturus_crypticus_%28Chucky_madtom%29_FWS_13686.jpg/1200px-Noturus_crypticus_%28Chucky_madtom%29_FWS_13686.jpg", category: fish},
    {common_name:"Pygmy madtom ", scientific_name: "Noturus stanauli", status: "Endangered", threat:"Habitat and water quality degradation remain the greatest threats to the madtom. The species remains highly vulnerable to extinction from stochastic events", img_url: "https://www.scotcat.com/images/noturus_stanauli.jpg", category: fish },
    {common_name:"Smoky madtom ", scientific_name: "Noturus baileyi", status: "Vulnerable", threat:"Threatened by logging activities, road and bridge construction, and mineral exploration. Activities that expose anakeesta shale, which forms sulphuric acid on contact with water, may result in degraded water quality and declines in madtom populations ", img_url: "https://www.floridamuseum.ufl.edu/catfish/ictaluridae/26-N_baileyi2.jpg", category: fish},
    {common_name:"Massasauga", scientific_name: "Sistrurus catenatus", status: "Threatened ", threat:"Decline has been due to habitat loss and fragmentation caused by agricultural development, urbanization, damming, and drainage of wetlands ", img_url: "https://upload.wikimedia.org/wikipedia/commons/e/e6/Sistrurus-catenatus-edwardsii_CDC-small.jpg", category: reptiles },
    {common_name:"Frosted flatwoods salamander", scientific_name: "Ambystoma cingulatum", status: "Vulnerable ", threat:"Potential threats include conversion of pine flatwoods habitat for agriculture, silviculture, or commercial/residential development; drainage or enlargement (with subsequent introduction of predatory fishes) of breeding ponds; habitat alteration resulting from suppression of fire; mortality and collecting losses associated with crayfish harvest; and highway mortality during migration. ", img_url: "http://calphotos.berkeley.edu/imgs/512x768/1111_1111/1111/4649.jpeg", category: amphibians },
    {common_name:"Reticulated flatwoods salamander ", scientific_name: "Ambystoma bishopi", status: "Endangered ", threat:"The principal threat is habitat destruction as a result of agriculture, silviculture, and residential and commercial development.", img_url: "http://www.caudata.org/cc/images/species/Ambystoma/A_bishopi1BARTLETT.jpg", category: amphibians},
    {common_name:"Eastern Indigo Snake", scientific_name: "Drymarchon couperi", status: "Threatened ", threat:"Decline is attributed to loss of mature longleaf pine habitat (e.g., conversion to slash and sand pine plantation, urbanization, citrus, mining, etc.), commercial collecting for pet trade (now illegal and has declined), and former widespread gassing of tortoise burrows (to collect rattlesnakes) ", img_url: "http://www.calusaherp.org/Speakers/bill_images/Drymarchon%20corais%20couperi,%20A1,%20Highlands%20Co,%20FL.jpg", category: reptiles },
    {common_name:"Fin whale ", scientific_name: "Balaenoptera physalus", status: "Endangered ", threat:"vessel collisions and by-catch(fishing) ", img_url: "http://www.pittwateronlinenews.com/resources/antarctic_minke_whale.jpg?timestamp=1423259814266", category: mammals },
    {common_name:"Goldline darter", scientific_name: "Percina aurolineata", status: "Vulnerable", threat: "Decline has been due to water pollution and siltation from sewage treatment plants, limestone quarrying, and strip-mining, and from the construction of reservoirs for hydropower, navigation, and flood control ", img_url: "https://upload.wikimedia.org/wikipedia/commons/2/2b/GoldlineDarter.jpg", category: fish },
    {common_name:"Etowah darter", scientific_name: "Etheostoma etowahae", status: "Vulnerable ", threat:" Habitat has been reduced by impoundments, siltation, and pollution from municipal and industrial waste discharges, runoff from monoculture agriculture and poultry farms, poultry processing plants, and silvicultural activities (USFWS 1993, 1994). Habitat has been degraded also by increased urbanization in the Atlanta metropolitan area.", img_url: "http://s3.thingpic.com/images/8U/G2ysbPwBJeZnonnkkV8MuyGS.jpeg", category: fish },
    {common_name:"Smalltooth sawfish", scientific_name:"Pristis pectinata", status:"Critically Endangered", threat:"    The principal threats to Smalltooth Sawfish are from fishing; it was formerly targeted, but is now mostly taken incidentally in broad-spectrum fisheries (CITES 2007). The long toothed rostrum of sawfish makes them extremely vulnerable to entanglement in any sort of net gear, gillnetting and trawling in particular.", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Pristis_pectinata_-_Georgia_Aquarium_Jan_2006.jpg/1200px-Pristis_pectinata_-_Georgia_Aquarium_Jan_2006.jpg", category: fish},
    {common_name:"North Atlantic right Whale", scientific_name:"Eubalaena glacialis", status:"Endangered", threat:"Right Whales in the North Atlantic are no longer hunted, and the most serious current threat is death or injury from entanglements in fishing gear and collisions with ships off the eastern coast of North Americas", img_url: "http://h.wokeji.com/explore/qwqs/201505/W020150520526873157689.jpg", category: mammals},
    {common_name:"Blue shiner", scientific_name:"Cyprinella caerulea", status:"Endangered", threat:"Declines have been caused by water pollution, siltation, and construction of reservoirs for hydropower, navigation, and flood control", img_url:"https://prd-wret.s3-us-west-2.amazonaws.com/assets/palladium/production/s3fs-public/styles/full_width/public/thumbnails/image/37_Cyprinella_caerulea_blue_shiner_0.jpg?itok=73BsMOWj", category: fish},
    {common_name:"Palezone shiner", scientific_name:"Notropis albizonatus", status:"Endangered", threat:"Populations have been fragmented by habitat alteration (primarily impoundments), and extant populations are being impacted by deteriorated water quality primarily resulting from poor land-use practices", img_url:"http://www.outdooralabama.com/sites/default/files//fishing/images/Shinerpalezone400A.jpg", category: fish},
    {common_name:"Kentucky Cave Shrimp", scientific_name: "Palaemonias ganteri", status: "Vulnerable", threat:" The species is impacted by contamination of the groundwater flowing into its habitat, with the main threat being inadequately treated or untreated sewage.", img_url: "https://c1.staticflickr.com/8/7432/12434722624_9f5c9e9960.jpg", category: fish },
    {common_name:"Pallid sturgeon", scientific_name: "Scaphirhynchus albus", status: "Endangered ", threat:"Habitat modification, including the construction of six main stem dams on the Missouri River and extensive channelisation in the lower Missouri and Mississippi Rivers, is the primary factor affecting the continued existence of this species.", img_url: "https://ecos.fws.gov/docs/species_images/doc4937.jpg", category: fish },
    {common_name:"Kirtland's warbler", scientific_name: "Setophaga kirtlandii", status: "Threatened ", threat:"Parasitism by brown-headed Cowbird Molothrus ater is a threat in breeding areas.  Wintering threats destroying fruit and habitat", img_url: "https://upload.wikimedia.org/wikipedia/commons/d/d1/Dendroica_kirtlandii_-Michigan%2C_USA_-male-8_%287%29.jpg", category: birds},
    {common_name:"Bachmans warbler", scientific_name: "Vermivora bachmanii", status: "Critically Endangered ", threat:"he drainage of river-bottom swamplands (Curson et al. 1994), and the near-total clearance of canebrakes in the USA, combined with the conversion of much of Cuba to sugarcane plantation", img_url: "https://identify.whatbird.com/img/4/63878/image.aspx", category: birds },
    {common_name:"American Burying beetle", scientific_name: "Nicrophorus americanus", status: "Critically Endangered", threat:"habitat loss, alteration, and degradation, and they now occur over less than 10% of their historic range.", img_url: "https://ecos.fws.gov/docs/species_images/doc5109.jpg", category: insects },
    {common_name:"Florida Bonneted Bat", scientific_name: "Eumops floridanus", status: "Vulnerable ", threat:"Vulnerable to habitat loss (in urban and forested areas), habitat alteration (removal of old trees with cavities, or buildings with spaces suitable for roosting), and pesticide spraying for mosquitoes. ", img_url: "http://all-len-all.com/wp-content/uploads/2014/07/florida-bonneted-bat-wcs-endangered.jpg", category: mammals },
    {common_name: "Bartram's Hairstreak Butterfly", scientific_name: "Strymon acis bartrami", status: "Critically Endangered ", threat:"Threats are high and some are probably not controllable, and predation by exotic ants seems likely to be a severe, pervasive, and uncontrollable threat", img_url: "https://c1.staticflickr.com/3/2304/2213490904_6927e27d3f_b.jpg", category: insects },
    {common_name:"Miami Blue Butterfly ", scientific_name: "Cyclargus (=hemiargus) thomasi bethunebakeri", status: "Endangered ", threat:"Urban development causing loss of habitat", img_url: "hhttp://www.naba.org/h_thomasi_f_above2.jpg", category: insects },
    {common_name:" Florida Butterfly", scientific_name: "Anaea troglodyta floridalis", status: "Critically Endangered", threat:" Habitat changes as well as exotic ants", img_url: "https://www.fws.gov/verobeach/NewsReleasesPDFs/Florida%20Leafwing%20(Holly%20Salvato).jpg", category: insects },
    {common_name:"Audubon's crested caracara", scientific_name: "Polyborus plancus audubonii", status: "Threatened", threat:"The main cause of habitat loss includes modification for urban development and agriculture", img_url: "https://ecos.fws.gov/docs/species_images/doc5038.jpg", category: birds },
    {common_name:"Key deer", scientific_name:"Odocoileus virginianus clavium", status: "Endangered", threat:"Today’s threats include habitat degradation, hunting, destruction, and alteration.  Habitat alteration at the hands of urban development has caused a substantial loss in available vegetation and natural resources, as well as causing habitat to become fragmented.", img_url: "https://ecos.fws.gov/docs/species_images/doc4914.jpg", category: mammals },
    {common_name:"Florida panther ", scientific_name: "Puma (=felis) concolor coryi", status: "Endangered ", threat:"Habitat loss and hunting", img_url: "https://ecos.fws.gov/docs/species_images/doc3663.jpg", category: mammals },
    {common_name:"Lower Keys Marsh rabbit", scientific_name: "Sylvilagus palustris hefneri", status: "Endangered ", threat:"The main threats to the Lower Keys rabbit is habitat destruction and fragmentation.", img_url: "https://ecos.fws.gov/docs/species_images/doc5036.jpg", category: mammals },
    {common_name:"Bluetail Mole skink", scientific_name: "Eumeces egregius lividus", status: "Threatened", threat:"Habitat loss is the main threat to the bluetail mole skink (U.S. Fish & Wildlife Service 1999).  Xeric habitat has suffered tremendous losses due to agricultural, residential, and commercial development", img_url: "http://farm1.static.flickr.com/689/22604418880_79049e9a42.jpg", category: reptiles},
    {common_name:"Atlantic Salt Marsh snake", scientific_name: "Nerodia clarkii taeniata", status: "Threatened", threat:"Habitat loss and degradation have been the biggest threats to the Atlantic salt marsh snake.  Habitat loss occurs from excessive filling and development in salt marshes", img_url: "https://www.fws.gov/northflorida/Media/Species/Atl_Salt-Marsh_Snake.jpg", category: reptiles}
])

comment = Comment.create!({content: "Hurrrray its showing!", species_id: 11, category_id: 2})
