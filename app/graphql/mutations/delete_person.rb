module Mutations
  class DeletePerson < GraphQL::Schema::RelayClassicMutation
    field :success, Integer, null: false

    argument :id, ID, required: true

    def resolve(id:)
      {
        success: Person.delete(id)
      }
    end
  end
end
