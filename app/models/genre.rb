class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'コメディ' },
    { id: 3, name: '感動' },
    { id: 4, name: 'アクション' },
    { id: 5, name: 'ロマンス' },
    { id: 6, name: 'コメディ' },
    { id: 7, name: 'ドラマ' },
    { id: 8, name: 'ファンタジー' },
    { id: 9, name: 'サイエンスフィクション' },
    { id: 10, name: 'スリラー' },
    { id: 11, name: 'ホラー' },
    { id: 12, name: '冒険' },
    { id: 13, name: 'スポーツ' },
    { id: 14, name: '歴史' },
    { id: 15, name: '学園' },
    { id: 16, name: 'SF' },
    { id: 17, name: 'ミステリー' },
    { id: 18, name: 'スパーパワー' },
    { id: 19, name: 'バトル' },
    { id: 20, name: 'ロボット' },
    { id: 21, name: '人間関係' },
    { id: 22, name: '音楽' },
    { id: 23, name: '神話・伝説' }
  ]

  include ActiveHash::Associations
  has_many :animes
  end