module Types
  class QueryType < Types::BaseObject
    field :schedules,
          [Types::ScheduleType],
          null: false,
          description: 'Returns a list of schedules in this application'

    def schedules
      Schedule.all
    end
  end
end
