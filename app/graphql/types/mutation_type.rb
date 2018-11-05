module Types
  class MutationType < Types::BaseObject
    field :createCountry, mutation: Mutations::CreateCountry
    field :updateCountry, mutation: Mutations::UpdateCountry
    field :deleteCountry, mutation: Mutations::DeleteCountry
    field :deletePerson, mutation: Mutations::DeletePerson
    field :updatePerson, mutation: Mutations::UpdatePerson
    field :createPerson, mutation: Mutations::CreatePerson
  end
end
