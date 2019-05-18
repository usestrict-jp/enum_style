class Article < ApplicationRecord

  enum publish: { draft: 0, preview: 10, published: 20 }
end
