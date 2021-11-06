module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :speeks, Types::SpeekType, null: false do
      description 'A query that selects all speeks'
    end

    field :speek_count, Integer, null: false do
      description 'Query the returns total number of speeks'
    end

    def speeks
      Speek.all
    end

    def speeks_count
      Speek.count
    end
  end
end
