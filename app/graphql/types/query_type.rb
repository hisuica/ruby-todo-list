module Types
  class QueryType < Types::BaseObject
    field :schedules,
          [Types::ScheduleType],
          null: false,
          description: 'Returns a list of schedules in this application'

    def schedules
      Schedule.all
    end

    field :schedule, Types::ScheduleType, null: false do
      argument :id, Int, required: true
    end

    def schedule(id:)
      Schedule.find(id)
    end

    field :user, Types::UserType, null: false do
      argument :id, Int, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
