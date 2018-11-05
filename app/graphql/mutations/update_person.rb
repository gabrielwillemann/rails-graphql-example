module Mutations
  class UpdatePerson < GraphQL::Schema::RelayClassicMutation
    field :person, Types::PersonType, null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :country_id, Integer, required: false

    def resolve(id:,name:,country_id:)
      {
        person: Person.update(id, {name: name, country_id: country_id})
      }
    end
  end
end
