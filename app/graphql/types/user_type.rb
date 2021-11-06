module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false do
      description 'ID of user.'
    end
    field :first_name, String, null: false do
      description 'First name of user. Cannot be blank.'
    end
    field :last_name, String, null: false do
      description 'Last name of user. Cannot be blank.'
    end
    field :email, String, null: false do
      description 'Email of user. Cannot be blank.'
    end
    field :username, String, null: false do
      description 'Username of user. Cannot be blank.'
    end
    field :speek, [SpeekType], null: true do
      description 'Speeks for current user.'
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
