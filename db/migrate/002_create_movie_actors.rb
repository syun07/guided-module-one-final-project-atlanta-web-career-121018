class CreateMovieActors < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_actors do |m|
      m.belongs_to :movie, index: true
      m.belongs_to :actor, index: true
    end
  end
end
