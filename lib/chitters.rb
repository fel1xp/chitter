require 'pg'

class Chitter 

  def self.all 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_challenge_test')
    else
      connection = PG.connect(dbname: 'chitter_challenge')
    end

      result = connection.exec('SELECT * FROM chitters')
      result.map { |chitter| chitter['chitter'] }
  end
end