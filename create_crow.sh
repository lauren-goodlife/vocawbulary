#!/bin/bash

# Lista delle specie di corvi
species=("hooded-crow" "white-necked-raven" "pied-crow" "little-crow" "american-crow" "cape-crow" "northwestern-crow" "common-raven" "australian-raven" "thick-billed-raven" "chihuahuan-raven" "indian-jungle-crow" "somali-crow" "slender-billed-crow" "flores-crow" "rook" "brown-headed-crow" "hawaiian-crow" "tamaulipas-crow" "bismarck-crow" "jamaican-crow" "mariana-crow" "white-necked-crow" "eastern-jungle-crow" "large-billed-crow" "bougainville-crow" "little-raven" "cuban-palm-crow" "new-caledonian-crow" "cuban-crow" "torresian-crow" "fish-crow" "hispaniolan-palm-crow" "palawan-crow" "fan-tailed-raven" "brown-necked-raven" "small-crow" "sinaloa-crow" "house-crow" "forest-raven" "collared-crow" "grey-crow" "piping-crow" "banggai-crow" "long-billed-crow" "violet-crow" "white-billed-crow")

# Percorso dove salvare i file HTML
output_dir="./crows"

# Modello base per le pagine HTML
html_template='<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPECIES_NAME | VoCAWbulary - Spot your local fellow crow</title>
    <link rel="stylesheet" href="../styles-crows.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<main>
    <header>
        <div class="logo"><a href="../index.html"><img src="../images/raven.webp" alt="Just a regular crow" width="auto" height="80px"></a>        
        <h1>SPECIES_NAME</h1>
        </div>
    </header>
    <nav>
        <div id="myLinks">
            <a id="back-btn" href="../geo-zone/europe.html" class="active"><i class="fa fa-arrow-left"></i> Back to European bros</a>
            <a href="../geo-zone/asia.html">Asia</a> 
            <a href="../geo-zone/north-america.html">North America</a>
            <a href="../geo-zone/south-america.html">South America</a> 
            <a href="../geo-zone/africa.html">Africa</a>
            <a href="../geo-zone/oceania.html">Oceania</a> 
        </div>
        <!-- "Hamburger menu" / "Bar icon" to toggle the navigation links -->
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </nav>

    <h2 class="section-title">This is the SPECIES_NAME Bro</h2>
    <div class="gallery">
        <img src="https://base-prod.rspb-prod.magnolia-platform.com/dam/jcr:247ddd3e-996b-411d-af9d-c03d3e5f888c/1970458931-Species-Carrion-Crow-black-bird-portrait-of-head-and-looking-at-camera_1.jpg" alt="" width="350px">
        <img src="https://base-prod.rspb-prod.magnolia-platform.com/dam/jcr:247ddd3e-996b-411d-af9d-c03d3e5f888c/1970458931-Species-Carrion-Crow-black-bird-portrait-of-head-and-looking-at-camera_1.jpg" alt="" width="350px">
    </div>      
    <article>
    <div class="data">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae molestiae, laborum architecto fugiat eveniet corrupti eaque incidunt reprehenderit enim cumque? Sapiente ipsum ratione autem tempore doloribus libero adipisci, similique odio.</p>
    </div> 
        <h3>Interesting stuff about this big boi</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos.</p>
    <h3>Another interesting fact</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos.</p>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo libero qui architecto quas sint, consequatur at, numquam facilis praesentium dolorem, ex officia! Distinctio perspiciatis, ratione unde nostrum officiis animi eos.</p>
    </article>

        
    <footer>
        <p>Handcrafted by <strong>Lorena</strong> for fun</p>
        <p>image credits @designollo</p>
    </footer>
</main>

<script src="../script.js"></script>
</body>
</html>'

# Crea un file HTML per ogni specie
for specie in "${species[@]}"
do
    file_content="${html_template//SPECIES_NAME/$specie}"
    echo "$file_content" > "$output_dir/$specie.html"
    echo "Creato: $output_dir/$specie.html"
done