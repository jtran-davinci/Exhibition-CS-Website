// Get ID from URL
const params = new URLSearchParams(window.location.search);
const songId = params.get("id");

// Load JSON
fetch("/song-data/songs.json")
  .then(res => res.json())
  .then(data => {
    const song = data.songs[songId];

    if (!song) {
      document.body.innerHTML = "Malformed request";
      return;
    }

    // Update UI
    document.getElementById("cover").src = song.cover;
    document.getElementById("songName").textContent = song["song-name"];
    document.getElementById("artists").textContent = song.artists;
    document.getElementById("creator").textContent = song.creator;

    document.getElementById("audio").src = song.recording;

    document.body.style.backgroundImage = `url(${song.background})`;

    // Load code dynamically
    fetch(song.code)
      .then(res => res.text())
      .then(code => {
        codeBlock.textContent = code;
        Prism.highlightElement(codeBlock);
      });
  })
  .catch(err => console.error(err));

  // http://127.0.0.1:5500/song/index.html?id=justin