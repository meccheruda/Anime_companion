window.addEventListener('DOMContentLoaded', function() {
  const modeToggleBtn = document.getElementById('modeToggleBtn');
  const modeToggleImg = document.getElementById('modeToggleImg');
  const mainElement = document.querySelector('.main');

  // ページ読み込み時にローカルストレージからダークモードの選択を取得
  const isDarkModeEnabled = localStorage.getItem('darkModeEnabled') === 'true';

  // モードを設定
  if (isDarkModeEnabled) {
    mainElement.classList.add('dark-mode');
    modeToggleImg.src = '/assets/dark-mode.png';
  } else {
    mainElement.classList.add('light-mode');
    modeToggleImg.src = '/assets/light-mode.png';
  }

  modeToggleBtn.addEventListener('click', toggleMode);

  function toggleMode() {
    mainElement.classList.toggle('light-mode');
    mainElement.classList.toggle('dark-mode');
    const isDarkMode = mainElement.classList.contains('dark-mode');
    modeToggleImg.src = isDarkMode ? '/assets/dark-mode.png' : '/assets/light-mode.png';

    // ダークモードの選択をローカルストレージに保存
    localStorage.setItem('darkModeEnabled', isDarkMode);
  }
});
