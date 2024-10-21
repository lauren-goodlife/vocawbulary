function searchForCrow() {
    // Ottieni il valore dell'input e convertilo in minuscolo
    let query = document.getElementById('searchInput').value.toLowerCase().trim();
    
    // Rimuovi eventuali spazi o caratteri indesiderati, ad esempio spazi vuoti tra le parole
    query = query.replace(/\s+/g, '-'); // sostituisce spazi con trattini
    
    // Costruisci l'URL dinamicamente
    const baseUrl = "https://lauren-goodlife.github.io/vocawbulary/crows/";
    const fullUrl = `${baseUrl}${query}.html`;

    // Esegui una richiesta per verificare se la pagina esiste
    fetch(fullUrl)
      .then(response => {
        if (response.ok) {
          // Se la pagina esiste, reindirizza
          window.location.href = fullUrl;
        } else {
          // Se non esiste, mostra un messaggio di errore
          alert('Specie non trovata. Prova un nome diverso.');
        }
      })
      .catch(error => {
        console.error('Errore durante la ricerca:', error);
        alert('Errore durante la ricerca. Riprova.');
      });
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