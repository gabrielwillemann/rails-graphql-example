module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :country, Types::CountryType, null: true do
      argument :id, ID, required: true
    end
    def country(id:)
      Country.where(id: id).first
    end

    field :countries, [Types::CountryType], null: true
    def countries
      Country.all
    end


    field :person, Types::PersonType, null: true do
      argument :id, ID, required: true
    end
    def person(id:)
      Person.where(id: id).first
    end

    field :people, [Types::PersonType], null: true
    def people
      Person.all
    end

  end
end
