module Types
  class ScheduleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :priority, String, null: false
    field :severity, String, null: false
    field :completed, Boolean, null: false
  end
end
