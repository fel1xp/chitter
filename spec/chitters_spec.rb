require 'chitters'
require 'pg'

describe '.all' do
  it 'returns the sample chitter from the db' do
    chitters = Chitter.all
    expect(chitters).to include "Chitter Test"
  end
end
