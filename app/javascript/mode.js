const modeToggleBtn = document.getElementById('modeToggleBtn');
const modeToggleImg = document.getElementById('modeToggleImg');

modeToggleBtn.addEventListener('click', toggleMode);

function toggleMode() {
  document.querySelector('.main').classList.toggle('dark-mode');
  modeToggleImg.classList.toggle('light-mode');
}
