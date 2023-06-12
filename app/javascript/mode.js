const modeToggleBtn = document.getElementById('modeToggleBtn');
const modeToggleImg = document.getElementById('modeToggleImg');
const mainElement = document.querySelector('.main');

modeToggleBtn.addEventListener('click', toggleMode);

function toggleMode() {
  mainElement.classList.toggle('light-mode');
  mainElement.classList.toggle('dark-mode');
  const isDarkMode = mainElement.classList.contains('dark-mode');
  modeToggleImg.src = isDarkMode ? '/assets/dark-mode.png' : '/assets/light-mode.png';
}
