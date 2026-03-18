const params = new URLSearchParams(window.location.search);
const genre = params.get("genre");

const container = document.getElementById("songContainer");
const genreTitle = document.getElementById("genre");

genreTitle.textContent = genre ? genre.toUpperCase() : "Unknown Genre";

const displayNames = {
  "rnb": "R&B",
  "pop": "Pop",
  "rock": "Rock",
  "jazz": "Jazz"
};

genreTitle.textContent = displayNames[genre] || genre;

fetch("../song-data/songs.json")
  .then(res => res.json())
  .then(data => {
    const songs = data.songs;

    Object.entries(songs).forEach(([id, song]) => {

      if (!song.genre || song.genre.toLowerCase() !== genre?.toLowerCase()) return;

      const card = document.createElement("div");
      card.className = "song-card-holder";

      card.innerHTML = `
        <div class="song-card">
            <img class="song-cover" src="${song.cover}" />

            <div class="song-upper-text">
                <h1>${song["song-name"]}</h1>
                <p>${song.artists}</p>
            </div>

            <div class="song-lower-text">
                <p>Recreated by</p>
                <h1>${song.creator}</h1>
            </div>

            <a class="listen-button" href="/song/?id=${id}">
                Listen
            </a>
        </div>
      `;

      container.appendChild(card);
    });

    if (container.children.length === 0) {
      container.innerHTML = "<p style='color:white;'>No songs found for this genre.</p>";
    }
  })
  .catch(err => console.error(err));