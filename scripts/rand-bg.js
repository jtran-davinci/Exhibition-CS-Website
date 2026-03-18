const backgrounds = [
    "../images/background/default-bg.gif",
    "../images/background/backParty2.gif",
    "../images/background/backLights4.gif",
    "../images/background/backgroundLights3.gif"
];

const randomIndex = Math.floor(Math.random() * backgrounds.length);
const chosenBg = backgrounds[randomIndex];

document.body.style.backgroundImage = `url('${chosenBg}')`;