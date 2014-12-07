require 'rails_helper'

RSpec.describe Article, :type => :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
  end

  describe 'association' do
    it { is_expected.to belong_to :user }
  end
end
