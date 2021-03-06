require 'rails_helper'

RSpec.describe Project, type: :model do
  context 'validations' do
    it 'is not valid without a name' do
      project = Project.create(description: 'This is a project', url: 'www.example.com')

      expect(project).not_to be_valid
    end

    it 'is not valid without a description' do
      project = Project.create(name: 'Project', url: 'www.example.com')

      expect(project).not_to be_valid
    end

    it 'is not valid without a url' do
      project = Project.create(name: 'Project', description: 'This is a project')

      expect(project).not_to be_valid
    end

    it 'is valid with name, description, and url' do
      project = create(:project)

      expect(project).to be_valid
    end
  end
end
