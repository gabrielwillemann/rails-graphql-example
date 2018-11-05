module Types
  class PersonType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :country, Types::CountryType, null: true
  end
end
