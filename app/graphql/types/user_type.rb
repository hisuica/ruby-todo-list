module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :schedules, [Types::ScheduleType], null: false
    field :schedules_count, Integer, null: false
    def schedules_count
      object.schedules.size
    end
  end
end
