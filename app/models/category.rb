class Category  < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '腕' },
      { id: 3, name: '脚' },
      { id: 4, name: '腹' }
    ]
    include ActiveHash::Associations
    has_many :posts
end