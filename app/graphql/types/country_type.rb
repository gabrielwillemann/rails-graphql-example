module Types
  class CountryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :continent, String, null: true
    field :people, [Types::PersonType], null: true
  end
end
