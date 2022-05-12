require "test_helper"

class ProprotyAttachementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proproty_attachement = proproty_attachements(:one)
  end

  test "should get index" do
    get proproty_attachements_url
    assert_response :success
  end

  test "should get new" do
    get new_proproty_attachement_url
    assert_response :success
  end

  test "should create proproty_attachement" do
    assert_difference("ProprotyAttachement.count") do
      post proproty_attachements_url, params: { proproty_attachement: { avatar: @proproty_attachement.avatar, proproty_id: @proproty_attachement.proproty_id } }
    end

    assert_redirected_to proproty_attachement_url(ProprotyAttachement.last)
  end

  test "should show proproty_attachement" do
    get proproty_attachement_url(@proproty_attachement)
    assert_response :success
  end

  test "should get edit" do
    get edit_proproty_attachement_url(@proproty_attachement)
    assert_response :success
  end

  test "should update proproty_attachement" do
    patch proproty_attachement_url(@proproty_attachement), params: { proproty_attachement: { avatar: @proproty_attachement.avatar, proproty_id: @proproty_attachement.proproty_id } }
    assert_redirected_to proproty_attachement_url(@proproty_attachement)
  end

  test "should destroy proproty_attachement" do
    assert_difference("ProprotyAttachement.count", -1) do
      delete proproty_attachement_url(@proproty_attachement)
    end

    assert_redirected_to proproty_attachements_url
  end
end
