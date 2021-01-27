require "application_system_test_case"

class TraductorsTest < ApplicationSystemTestCase
  setup do
    @traductor = traductors(:one)
  end

  test "visiting the index" do
    visit traductors_url
    assert_selector "h1", text: "Traductors"
  end

  test "creating a Traductor" do
    visit traductors_url
    click_on "New Traductor"

    fill_in "Correo", with: @traductor.correo
    fill_in "Nombre", with: @traductor.nombre
    click_on "Create Traductor"

    assert_text "Traductor was successfully created"
    click_on "Back"
  end

  test "updating a Traductor" do
    visit traductors_url
    click_on "Edit", match: :first

    fill_in "Correo", with: @traductor.correo
    fill_in "Nombre", with: @traductor.nombre
    click_on "Update Traductor"

    assert_text "Traductor was successfully updated"
    click_on "Back"
  end

  test "destroying a Traductor" do
    visit traductors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Traductor was successfully destroyed"
  end
end
