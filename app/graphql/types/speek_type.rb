module Types
  class SpeekType < Types::BaseObject
    field :id, ID, null: false do
      description 'ID of speek.'
    end
    field :user_id, Integer, null: false do
      description 'User ID to of speek.'
    end
    field :title, String, null: false do
      description 'Title of the speek, cannot be blank.'
    end
    field :body, String, null: false do
      description 'Body of speek, cannot be blank.'
    end
    field :user, UserType, null: true do
      description 'User which speek belongs to.'
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
