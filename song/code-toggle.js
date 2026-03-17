const showCodeBtn = document.getElementById('showCode');
const codeOverlay = document.getElementById('codeOverlay');

showCodeBtn.addEventListener('click', () => {
    codeOverlay.classList.toggle('active');

    showCodeBtn.textContent = codeOverlay.classList.contains('active') ? 'Hide Code' : 'Show Code';
});