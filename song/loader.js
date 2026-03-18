const params = new URLSearchParams(window.location.search);
const songId = params.get("id");

fetch("../song-data/songs.json")
  .then(res => res.json())
  .then(data => {
    const song = data.songs[songId];

    if (!song) {
      document.body.innerHTML = "Malformed request";
      return;
    }

    document.getElementById("return").href = `../genre/?genre=${song.genre}`;

    document.getElementById("cover").src = song.cover;
    document.getElementById("songName").textContent = song["song-name"];
    document.getElementById("artists").textContent = song.artists;
    document.getElementById("creator").textContent = song.creator;

    document.getElementById("audio").src = song.recording;

    document.body.style.backgroundImage = `url(${song.background})`;

    fetch(song.code)
      .then(res => res.text())
      .then(code => {
        codeBlock.textContent = code;
        Prism.highlightElement(codeBlock);
      });
  })
  .catch(err => console.error(err));