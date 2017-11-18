require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { address_id: @card.address_id, allergy: @card.allergy, cart_number: @card.cart_number, created: @card.created, first_name: @card.first_name, insurance: @card.insurance, last_name: @card.last_name, passport: @card.passport, residence: @card.residence, second_name: @card.second_name }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { address_id: @card.address_id, allergy: @card.allergy, cart_number: @card.cart_number, created: @card.created, first_name: @card.first_name, insurance: @card.insurance, last_name: @card.last_name, passport: @card.passport, residence: @card.residence, second_name: @card.second_name }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
