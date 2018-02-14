require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:message) }
  it { should validate_uniqueness_of(:email) }

   describe "#subject" do
        it "return the article title" do
          contact = create(:contact, email: 'Lorem_Ipsum@gmail.com' )

          expect(contact.email).to eq 'Lorem_Ipsum@gmail.com'
        end
      end

end

