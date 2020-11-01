# frozen_string_literal: true

json.array! @technologies, partial: 'technologies/technology', as: :technology
