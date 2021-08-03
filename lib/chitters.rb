require 'pg'

class Chitter 

  def self.all 
      connection = PG.connect(dbname: 'chitter_challenge')
      result = connection.exec('SELECT * FROM chitters')
      result.map { |chitter| chitter['chitter'] }
  end
end