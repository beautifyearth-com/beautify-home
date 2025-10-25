// Featured Artists - Fetch from API and inject into page
(function() {
  // API endpoint
  const API_URL = 'https://art.beautifyearth.com/api/artist/search';
  
  // Fetch artists from API
  async function fetchArtists() {
    try {
      const response = await fetch(API_URL, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          limit: 4,
          offset: 0,
          sort: 'recent'
        })
      });
      
      const artists = await response.json();
      
      if (artists && Array.isArray(artists)) {
        displayArtists(artists.slice(0, 4));
      }
    } catch (error) {
      console.error('Error fetching artists:', error);
    }
  }
  
  // Display artists in the page
  function displayArtists(artists) {
    const container = document.getElementById('featured-artists-container');
    if (!container) return;
    
    const artistsHTML = artists.map(artist => `
      <a href="https://art.beautifyearth.com/artist/${artist.username}" 
         target="_blank" 
         class="featured-artist-card">
        <div class="featured-artist-image-wrapper">
          <img src="${artist.profile_image || 'images/default-artist.jpg'}" 
               alt="${artist.name}" 
               class="featured-artist-image">
        </div>
        <div class="featured-artist-name">${artist.name}</div>
        <div class="featured-artist-location">${artist.city || ''}</div>
      </a>
    `).join('');
    
    container.innerHTML = artistsHTML;
  }
  
  // Initialize when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', fetchArtists);
  } else {
    fetchArtists();
  }
})();
