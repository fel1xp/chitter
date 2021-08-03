require 'pg'  

feature 'Viewing title on homepage' do 
  scenario 'visit the homepage' do
    visit('/')
    expect(page).to have_content "Welcome to Chitter"
  end
end

feature 'viewing chitters on homepage' do 
  scenario 'user can see chitters' do
    connection = PG.connect(dbname: 'chitter_challenge_test')
    connection.exec("INSERT INTO chitters (username, chitter, date)
    VALUES ('test_user', 'Chitter Test', '03/08/21');")

    visit('/')

    expect(page).to have_content "test_user"
  end
end


