# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Specie.destroy_all

birds= Category.create! ({customizable: false, name: "birds"})
mammals= Category.create! ({customizable: false, name: "mammals"})
fish= Category.create! ({customizable: false, name: "fish"})
reptiles= Category.create! ({customizable: false, name: "reptiles"})
amphibians= Category.create! ({customizable: false, name: "amphibians"})
insects= Category.create! ({customizable: false, name: "insects"})

species= Specie.create!([
    {common_name:"Mitchell's satyr", scientific_name: "Neonympha mitchellii", status: "Endangered", threat:"Habitat Loss and Degradation; Exotic Weed Invasion; Pesticides / Pollutants; Butterfly Collectors", img_url: "https://mnfi.anr.msu.edu/element-images/1763.jpg", category: insects },
    {common_name:"Puritan tiger beetle", scientific_name: "Cicindela puritana", status: "Endangered ", threat:"Habitat Loss and Degradation; Flooding; Parasites; Insect Predators", img_url: "http://i5.photobucket.com/albums/y196/Garfman/puritana202f5581.gif", category: insects },
    {common_name:"Shenandoah salamander", scientific_name: "Plethodon shenandoah", status: "Endangered ", threat:"Infestation by non-native insects/disease; restricted range of habitat", img_url: "http://www.virginiaherpetologicalsociety.com/amphibians/salamanders/shenandoah-salamander/Shenandoah%20Salamander%20(Plethodon%20shenandoah)0002.JPG", category: amphibians },
    {common_name:"Spotfin chub", scientific_name: "Cyprinella monacha", status: "Vunerable ", threat:"Habitat loss, sedimentation, and dams", img_url: "https://static.wixstatic.com/media/6f2f2b_cc97e5c302fc44d78d83128b50f1d4bb.jpg_srz_541_419_85_22_0.50_1.20_0.00_jpg_srz", category: fish },
    {common_name:"Duskytail darter", scientific_name: "Etheostoma percnurum", status: "Endangered ", threat:"Impoundment of waterways, increased silt, logging, coal mining and disease", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Etheostoma_percnurum.jpg/1024px-Etheostoma_percnurum.jpg", category: fish },
    {common_name:"Bog Turtle", scientific_name: "Glyptemys muhlenbergii", status: "Critically Endangered ", threat:"Invasive Plants, Urban Development, and Black Market pet trade", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Bog_Turtle.jpg/800px-Bog_Turtle.jpg", category: reptiles },
    {common_name:"Green Sea Turtle", scientific_name: "Chelonia mydasa", status: "Endangered ", threat:"Hunting, poaching, egg harvesting, boat strikes, pollution, fishermen nets, fibropapillomatosis.", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Green_turtle_swimming_over_coral_reefs_in_Kona.jpg/1024px-Green_turtle_swimming_over_coral_reefs_in_Kona.jpg", category: reptiles },
    {common_name:"Red knot", scientific_name: "Calidris canutus rufa", status: "Vulnerable ", threat:"Habitat destruction has been the primary cause of population decline", img_url: "https://c1.staticflickr.com/4/3440/4564657088_902c932b2b_b.jpg", category: birds },
    {common_name:"Piping plover", scientific_name: "Charadrius melodus", status: "Endangered ", threat:"Habitat destruction has been the primary cause of population decline", img_url: "http://greglasley.com/images/P/Piping%20Plover%200057.jpgf", category: birds },
    {common_name:" Northern long-eared Bat", scientific_name: "Myotis septentrionalis", status: "Vulnerable", threat:" Habitat destruction has been the primary cause of population decline.", img_url: "http://www.fnanaturesearch.org/images/stories/ns/marked/M/4995.jpg", category: mammals },
    {common_name:"Virginia Northern Flying Squirrel ", scientific_name: "Glaucomys sabrinus", status: "Endangered ", threat:"Habitat destruction has been the primary cause of population decline. ", img_url: "http://www.alleghenyclimate.org/images/wvnfs.jpg", category: mammals }
])
