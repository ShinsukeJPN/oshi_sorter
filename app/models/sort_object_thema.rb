class SortObjectThema < ApplicationRecord
  belongs_to :sort_object, optional: true
  belongs_to :thema, optional: true
end
