feature 'Viewing homepage' do 
  scenario 'visit the homepage' do
    visit('/')
    expect(page).to have_content "Hello World"
  end
end
