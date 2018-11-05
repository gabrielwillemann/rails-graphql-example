module Mutations
  class CreateCountry < GraphQL::Schema::RelayClassicMutation
    field :country, Types::CountryType, null: false

    argument :name, String, required: true
    argument :continent, String, required: true

    def resolve(*args)
      {
        country: Country.create(args[0])
      }
    end
  end
end
