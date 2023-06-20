class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'ロマンス' },
    { id: 4, name: 'コメディ' },
    { id: 5, name: 'ドラマ' },
    { id: 6, name: '感動' },
    { id: 7, name: 'ファンタジー' },
    { id: 8, name: '学園' },
    { id: 9, name: '歴史' },
    { id: 10, name: '冒険' },
    { id: 11, name: 'SF' },
    { id: 12, name: 'ロボット' },
    { id: 13, name: 'ミステリー' },
    { id: 14, name: '音楽' },
    { id: 15, name: 'スポーツ' },
    { id: 16, name: 'ホラー' },
    { id: 17, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :animes
  end