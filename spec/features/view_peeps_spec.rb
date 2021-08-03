feature 'Viewing homepage' do 
  scenario 'visit the homepage' do
    visit('/')
    expect(page).to have_content "Welcome to Chitter"
  end
end
