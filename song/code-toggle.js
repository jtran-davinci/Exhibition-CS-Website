const showCodeBtn = document.getElementById('showCode');
const codeOverlay = document.getElementById('codeOverlay');
const codeBlock = document.getElementById("codeBlock");

showCodeBtn.addEventListener('click', () => {
    codeOverlay.classList.toggle('active');

    showCodeBtn.textContent = codeOverlay.classList.contains('active') ? 'Hide Code' : 'Show Code';
});

fetch("/song-data/justint/code.rb")
  .then(response => response.text())
  .then(data => {
    codeBlock.textContent = data;

    Prism.highlightElement(codeBlock);
  })
  .catch(err => {
    codeBlock.textContent = "Failed to load code.";
    console.error(err);
  });