require "application_system_test_case"

class TablaturasTest < ApplicationSystemTestCase
  setup do
    @tablatura = tablaturas(:one)
  end

  test "visiting the index" do
    visit tablaturas_url
    assert_selector "h1", text: "Tablaturas"
  end

  test "creating a Tablatura" do
    visit tablaturas_url
    click_on "New Tablatura"

    fill_in "Fecha", with: @tablatura.fecha
    fill_in "Traductor", with: @tablatura.traductor
    fill_in "Web", with: @tablatura.web
    click_on "Create Tablatura"

    assert_text "Tablatura was successfully created"
    click_on "Back"
  end

  test "updating a Tablatura" do
    visit tablaturas_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @tablatura.fecha
    fill_in "Traductor", with: @tablatura.traductor
    fill_in "Web", with: @tablatura.web
    click_on "Update Tablatura"

    assert_text "Tablatura was successfully updated"
    click_on "Back"
  end

  test "destroying a Tablatura" do
    visit tablaturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tablatura was successfully destroyed"
  end
end
