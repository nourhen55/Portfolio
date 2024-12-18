// Slider logic
var sliderCounter = 0; // Compteur pour le tableau
var sliderContent = ["Developer", "Code"]; // Les mots à afficher
var sliderValue = document.querySelector("#sliderValue");

function slide() {
  if (sliderCounter >= sliderContent.length) {
    sliderCounter = 0; // Réinitialise si on atteint la fin
  }
  sliderValue.innerHTML = ""; // Efface le contenu précédent
  sliderValue.classList.remove("holder-animation");
  void sliderValue.offsetWidth; // Hack pour forcer le reflow (animation)
  sliderValue.classList.add("holder-animation");

  // Ajoute les lettres avec animation
  for (let i = 0; i < sliderContent[sliderCounter].length; i++) {
    let letterDiv = document.createElement("div");
    letterDiv.innerHTML = sliderContent[sliderCounter][i];
    letterDiv.classList.add("start", "animation");
    letterDiv.style.animationDelay = i / 10 + "s";
    sliderValue.appendChild(letterDiv);
  }
  sliderCounter++;
}
slide();
setInterval(slide, 2000);

// Menu toggle
document.querySelector('.menu-btn').addEventListener('click', function () {
  document.querySelector('.menu').classList.toggle("active");
  document.querySelector('.menu-btn i').classList.toggle("active");
});

// Download CV logic
document.getElementById('download-cv').addEventListener('click', function (event) {
  event.preventDefault(); // Empêche le lien par défaut

  // Crée un élément <a> temporaire
  const link = document.createElement('a');
  link.href = 'cv.pdf'; // Chemin vers ton fichier CV
  link.download = 'cv.pdf'; // Force le téléchargement avec le nom "cv.pdf"

  // Simule un clic sur le lien
  document.body.appendChild(link);
  link.click();

  // Nettoie l'élément créé
  document.body.removeChild(link);
});

// Learn More functionality
const learnMoreLinks = document.querySelectorAll('.learn-more');

learnMoreLinks.forEach(link => {
  link.addEventListener('click', function(event) {
    event.preventDefault();

    const service = link.parentElement;

    const extraText = service.querySelector('.extra-text');

    if (extraText.style.display === 'none') {
      extraText.style.display = 'block';
      link.textContent = 'Show less..'; 
    } else {
      extraText.style.display = 'none';
      link.textContent = 'Learn more..'; 
    }
  });
});
