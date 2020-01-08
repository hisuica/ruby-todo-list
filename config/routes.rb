# config/routes.rb
Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  root 'schedule#index'
  post "/graphql", to: "graphql#execute"
end