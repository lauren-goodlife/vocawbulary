function myFunction() {
    var x = document.getElementById("myLinks");
    if (x.style.display === "block") {
      x.style.display = "none";
    } else {
      x.style.display = "block";
    }
  }

  





/* document.addEventListener('DOMContentLoaded', function() {
    const searchButton = document.getElementById('searchButton');
    const searchInput = document.getElementById('searchInput');

    // Dizionario di mappatura delle ricerche
    const crowPages = {
        'carrion crow': 'carrion-crow.html',
        'hooded crow': 'hooded-crow.html',
        'american crow': 'american-crow.html',
        // Aggiungi altre mappature qui
    };

    searchButton.addEventListener('click', function() {
        const query = searchInput.value.toLowerCase().trim();
        let foundPage = null;
        
        for (const [key, value] of Object.entries(crowPages)) {
            if (key.includes(query)) {
                foundPage = value;
                break;
            }
        }
        
        if (foundPage) {
            const fileUrl = `file://wsl.localhost/Ubuntu/home/lorena/repos/vocrowbulary/crows/${foundPage}`;
            window.location.href = fileUrl;
        } else {
            alert('Nessun risultato trovato per: ' + query);
        }
    });

    // Aggiungi un listener per l'input per cercare quando si preme "Enter"
    searchInput.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            event.preventDefault();
            searchButton.click();
        }
    });
});
*/