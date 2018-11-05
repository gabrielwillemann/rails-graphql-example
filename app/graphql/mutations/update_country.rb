module Mutations
  class UpdateCountry < GraphQL::Schema::RelayClassicMutation
    field :country, Types::CountryType, null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :continent, String, required: false

    def resolve(id:,name:,continent:)
      {
        country: Country.update(id, {name: name, continent: continent})
      }
    end
  end
end
