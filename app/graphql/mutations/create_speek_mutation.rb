module Mutations
  class CreateSpeekMutation < BaseMutation

    field :speek, Types::SpeekType, null: false

    argument :title, String, required: true do
      description 'The title field is a String type and is required for a speek.'
    end

    argument :body, String, required: true do
      description 'Main content of the speek.'
    end

    argument :user, Integer, required: true do
      description 'ID of user.'
    end
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    def resolve(title:, body:, user:)
      @speek = Speek.new(title: title, body: body, user: User.find_by_id(user))

      if @speek.save
        {
          speek: @speek,
          errors: []
        } else {
          speek: nil,
          errors: @speek.errors.full_messages
        }
      end
    end
  end
end
