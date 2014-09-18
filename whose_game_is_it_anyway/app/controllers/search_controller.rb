class SearchController < ApplicationController

  def index
    @people = Person.all
  end

  def search
    @results = Game.where(person_id: params['ids']).where('number_of_players >= ?',params['ids'].length)
  end
end
