module Mutations
  class DeleteCountry < GraphQL::Schema::RelayClassicMutation
    field :success, Integer, null: false

    argument :id, ID, required: true

    def resolve(id:)
      {
        success: Country.delete(id)
      }
    end
  end
end
