require 'rails_helper'



RSpec.describe Article, type: :model do

        describe "validators" do
          it { should have_many (:comments) }
        end 

      describe "#subject" do
        it "return the article title" do
          article = create(:article, title: 'Lorem Ipsum' )

          expect(article.subject).to eq 'Lorem Ipsum'
        end
      end

end
