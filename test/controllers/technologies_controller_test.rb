# frozen_string_literal: true

require 'test_helper'

class TechnologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technology = technologies(:one)
  end

  test 'should get index' do
    get technologies_url
    assert_response :success
  end

  test 'should show technology' do
    get technology_url(@technology)
    assert_response :success
  end
end
