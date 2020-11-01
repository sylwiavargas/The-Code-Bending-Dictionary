# frozen_string_literal: true

json.extract! technology, :id, :name, :created_at, :updated_at
json.url technology_url(technology, format: :json)
