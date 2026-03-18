const style = document.createElement('style');

style.textContent = `
.timeout-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;

    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;

    background: rgba(0, 0, 0, 0.5);
    backdrop-filter: blur(12px);

    z-index: 20000;

    opacity: 0;
    pointer-events: none;
    transition: opacity 0.5s ease;
}

.timeout-overlay.active {
    opacity: 1;
    pointer-events: all;
}

.timeout-overlay h1 {
    font-size: 4rem;
    color: white;
    margin: 10px 0;
}

.timeout-overlay h2 {
    color: white;
    font-weight: 400;
}

.timeout-overlay h3 {
    color: #aaa;
    font-weight: 400;
}
`;

document.head.appendChild(style);

const overlay = document.createElement('div');
overlay.className = 'timeout-overlay';

overlay.innerHTML = `
  <h2>Are you still there?</h2>
  <h3>Returning back to the home screen in</h3>
  <h1>5</h1>
  <h2>Make any interaction to cancel</h2>
`;

document.body.appendChild(overlay);

let timeout;
let countdownInterval;
let timeLeft = 5;
let inactivity = 60000;

const counter = overlay.querySelector('h1');

function showOverlay() {
    overlay.classList.add('active');

    timeLeft = 5;
    counter.textContent = timeLeft;

    clearInterval(countdownInterval);
    countdownInterval = setInterval(() => {
        timeLeft--;
        counter.textContent = timeLeft;

        if (timeLeft <= 0) {
            clearInterval(countdownInterval);
            window.location.href = "../";
        }
    }, 1000);
}

function hideOverlay() {
    overlay.classList.remove('active');
    clearInterval(countdownInterval);
}

function resetTimer() {
    clearTimeout(timeout);
    hideOverlay();
    timeout = setTimeout(showOverlay, inactivity);
}

['mousemove', 'keydown', 'click', 'touchstart'].forEach(event => {
    window.addEventListener(event, resetTimer);
});

window.addEventListener('keydown', (e) => {
    if (e.ctrlKey && e.key.toLowerCase() === 'b') {
        e.preventDefault();
        window.location.href = "../";
    }
});

resetTimer();