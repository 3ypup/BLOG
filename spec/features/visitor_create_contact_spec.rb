require "rails_helper"


feature "Contact creation"  do 

  scenario "allows acces to contact page" do
    visit '/contacts'


    expect(page).to have_content I18n.t("contacts.contact_us") 


  end
    
    scenario "allows guest create text" do

      visit "/contacts"
      fill_in :contact_email, :with => "tech_condition@gmail.com"
      fill_in :contact_message, :with => "tech_condition@gmail.com"
      click_button 'send message!'
   
      expect(page).to have_content "Thhanks!@"
    end


end