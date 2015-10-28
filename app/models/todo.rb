class Todo < ActiveRecord::Base
  include Grape::Entity::DSL

  class Entity < Grape::Entity
    expose :name
  end
end
