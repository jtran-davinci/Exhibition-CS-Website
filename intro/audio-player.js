document.querySelectorAll(".audio-player").forEach((player) => {
    const audio = player.querySelector("audio");

    const playIcon = player.querySelector(".playIcon");
    const pauseIcon = player.querySelector(".pauseIcon");

    const playPauseBtn = player.querySelector(".playPause");

    const progressContainer = player.querySelector(".progress-container");
    const progressBar = player.querySelector(".progress-bar");
    const progressKnob = player.querySelector(".progress-knob");

    const currentTimeEl = player.querySelector(".currentTime");
    const totalTimeEl = player.querySelector(".totalTime");

  let isDragging = false;

  playPauseBtn.addEventListener("click", () => {
    if (audio.paused) {
      audio.play();
      showPause();
    } else {
      audio.pause();
      showPlay();
    }
  });

  audio.addEventListener("ended", showPlay);

  function showPlay() {
    playIcon.classList.add("active");
    pauseIcon.classList.remove("active");
  }

  function showPause() {
    pauseIcon.classList.add("active");
    playIcon.classList.remove("active");
  }

  function formatTime(time) {
    const minutes = Math.floor(time / 60);
    const seconds = Math.floor(time % 60)
      .toString()
      .padStart(2, "0");
    return `${minutes}:${seconds}`;
  }

  audio.addEventListener("loadedmetadata", () => {
    totalTimeEl.textContent = formatTime(audio.duration);
  });

  audio.addEventListener("timeupdate", () => {
    if (!isDragging) {
      const percent = (audio.currentTime / audio.duration) * 100;

      progressBar.style.width = percent + "%";
      progressKnob.style.left = percent + "%";

      currentTimeEl.textContent = formatTime(audio.currentTime);
    }
  });

  progressContainer.addEventListener("click", (e) => {
    const rect = progressContainer.getBoundingClientRect();
    const percent = (e.clientX - rect.left) / rect.width;
    audio.currentTime = percent * audio.duration;
  });

  progressKnob.addEventListener("mousedown", () => {
    isDragging = true;
  });

  document.addEventListener("mouseup", () => {
    isDragging = false;
  });

  document.addEventListener("mousemove", (e) => {
    if (!isDragging) return;

    const rect = progressContainer.getBoundingClientRect();
    let percent = (e.clientX - rect.left) / rect.width;

    percent = Math.max(0, Math.min(1, percent));

    progressBar.style.width = percent * 100 + "%";
    progressKnob.style.left = percent * 100 + "%";

    audio.currentTime = percent * audio.duration;
  });
});