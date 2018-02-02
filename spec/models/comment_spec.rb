require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'belongins' do
    it { should belong_to (:article) }
  end
  describe 'validations' do
    it {should validate_presence_of (:author) }
    it {should validate_presence_of (:body) }
end
end
