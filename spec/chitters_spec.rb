require 'chitters'
require 'pg'

describe '.all' do
  it 'an array the chitter information' do
    connection = PG.connect(dbname: 'chitter_challenge_test')
    connection.exec("INSERT INTO chitters (username, chitter, date)
     VALUES ('test_user', 'Chitter Test', '03/08/21');")
    chitters = Chitter.all
    expect(chitters).to include "Chitter Test"
  end
end
