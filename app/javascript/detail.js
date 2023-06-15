// ジャンル詳細の表示制御
document.addEventListener('DOMContentLoaded', function() {
  // ボタンと表の要素を取得
  const genreToggleBtn = document.getElementById('genreToggleBtn');
  const genreTable = document.getElementById('genreTable');

  genreTable.style.display = 'none';

  // ボタンのクリックイベントを処理
  genreToggleBtn.addEventListener('click', function() {
    // 表の表示状態を切り替える
    if (genreTable.style.display === 'none') {
      genreTable.style.display = 'block';
    } else {
      genreTable.style.display = 'none';
    }
  });
});

// ページ読み込み完了時の処理
window.addEventListener('load', function() {
  // ここに追加の処理を記述する
});