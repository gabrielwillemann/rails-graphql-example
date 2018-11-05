module Mutations
  class CreatePerson < GraphQL::Schema::RelayClassicMutation
    field :person, Types::PersonType, null: false

    argument :name, String, required: true
    argument :country_id, Integer, required: true

    def resolve(*args)
      {
        person: Person.create(args[0])
      }
    end
  end
end
