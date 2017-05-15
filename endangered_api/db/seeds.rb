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
    {common_name:"Piping plover", scientific_name: "Charadrius melodus", status: "Endangered ", threat:"Habitat destruction has been the primary cause of population decline", img_url: "http://greglasley.com/images/P/Piping%20Plover%200057.jpgf", category: birds },
    {common_name:" Northern long-eared Bat", scientific_name: "Myotis septentrionalis", status: "Vulnerable", threat:" Habitat destruction has been the primary cause of population decline.", img_url: "http://www.fnanaturesearch.org/images/stories/ns/marked/M/4995.jpg", category: mammals },
    {common_name:"Virginia Northern flying squirrel ", scientific_name: "Glaucomys sabrinus", status: "Endangered ", threat:"Habitat destruction has been the primary cause of population decline. ", img_url: "http://www.alleghenyclimate.org/images/wvnfs.jpg", category: mammals },
    {common_name:"Gray bat", scientific_name:"Myotis grisescens", status: "Endangered ", threat:"Cave Distrubance, Deforestation", img_url: "https://ecos.fws.gov/docs/species_images/doc1480.jpg", category: mammals },
    {common_name:"Indiana bat ", scientific_name: "myotis sodalis", status: "Endangered ", threat:"A significant threat is human disturbance at winter caves, which causes aroused bats to deplete energy reserves", img_url: "https://ecos.fws.gov/docs/species_images/doc3621.jpg", category: mammals },
    {common_name:"Rusty patched bumble bee", scientific_name: "Bombus affinis", status: "Endangered ", threat:"pathogen spill-over from commercial to wild bees; habitat loss due to agriculture and development; pesticide use; and climate change ", img_url: "https://ecos.fws.gov/docs/species_images/doc5094.jpg", category: insects },
    {common_name:"Big Sandy crayfish ", scientific_name: "Cambarus callainus", status: "Threatened ", threat:"extractive industry, logging and road construction. This has caused fragmentation and degradation of habitat that has historically been used by this species. ", img_url: "https://upload.wikimedia.org/wikipedia/commons/2/27/Chattooga_River_Crayfish_%2814174938652%29.jpg", category: fish},
    {common_name:"Red knot ", scientific_name: "Calidris canutus", status: "Threatened", threat:"The species is vulnerable to extensive land reclamation projects that encroach upon important habitat across its range", img_url: "https://iucnredlist-photos.s3.amazonaws.com/thumb/2051202294.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519468913&Signature=LQTFqyqnzRwZfGcvEo49ldV04f8%3D", category: birds },
    {common_name:"Yellowfin madtom ", scientific_name: "Noturus flavipinnis", status: "Vulnerable", threat:"impoundments, chemical spills, mining, dredging, and pollution ", img_url: "https://www.floridamuseum.ufl.edu/catfish/ictaluridae/flavipinnis2.jpg", category: fish},
    {common_name:"Piping plover ", scientific_name: "Charadrius melodus", status: "Endangered ", threat:"Drought, inappropriate water and beach management, gas / oil industry dredging operations, development, shoreline stabilisation and beach disturbance ", img_url: "https://iucnredlist-photos.s3.amazonaws.com/thumb/1770845905.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519497552&Signature=fyTrGEc4LODO0ZpAOggXFIZIOzk%3D", category: birds },
    {common_name:"Hawksbill sea turtle", scientific_name: "Eretmochelys imbricata", status: "Endangered ", threat:"trade, egg collection, slaughter for meat, habitat destruction. ", img_url: "https://iucnredlist-photos.s3.amazonaws.com/thumb/2004675535.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519466484&Signature=rDxqGgiMny1Aqj0K11yIhgsn45g%3D", category: reptiles },
    {common_name:"Kemp's Ridley sea turtle ", scientific_name: "Lepidochelys kempii", status: "Endangered ", threat:"Habitat loss, pollution, shrimping nets ", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Lepidochelys_kempii.jpg/220px-Lepidochelys_kempii.jpg", category: reptiles},
    {common_name:"Spruce fir-moss spider ", scientific_name: "Microhexura montivaga", status: "Endangered ", threat:"The widespread death of Fraser fir trees has destroyed many habitats for the spiders, and they were listed as endangered in 1995. Many Fraser firs have died due to infestation with Adelges piceae, the balsam woolly adelgid, an insect pest introduced from Europe. ", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Spruce_Fir_Moss_Spider.jpg/180px-Spruce_Fir_Moss_Spider.jpg", category: insects },
    {common_name:"Roseate tern ", scientific_name: "Sterna dougallii", status: "Endangered ", threat:"hunting in the wintering quarters may be the most significant ", img_url: "https://ecos.fws.gov/docs/species_images/doc4948.jpg", category: birds },
    {common_name:"Red cockaded woodpecker", scientific_name: "Picoides borealis", status: "Endangered ", threat:"Because of its biology and dependence on old-growth forest, this species is said to be uniquely susceptible to rapid declines under inappropriate management regimes", img_url: "https://iucnredlist-photos.s3.amazonaws.com/thumb/135092392.jpg?AWSAccessKeyId=AKIAJIJQNN2N2SMHLZJA&Expires=1519480491&Signature=1jr2dw0w%2F5CNDfYOOEIdPKx8FFM%3D", category: birds },
    {common_name:"Leatherback sea turtle", scientific_name: "Dermochelys coriacea", status: "Endangered ", threat:" incidental capture of marine turtles in fishing gear targeting other species,  direct utilization of turtles or eggs for human use, coastal development", img_url: "https://ecos.fws.gov/docs/species_images/doc3727.jpg", category: reptiles },
])

comment = Comment.create!({content: "Hurrrray its showing!", species_id: 11, category_id: 2})
