# frozen_string_literal: true

require './stock_picker'

describe '#stock_picker' do
  it 'returns index of best day to buy and index best day to sell' do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eql([1, 4])
  end
  it 'returns index of best day to buy and index best day to sell' do
    expect(stock_picker([17, 16, 15, 14, 5, 2, 1, 0])).to eql('No good options')
  end
  it 'returns index of best day to buy and index best day to sell' do
    expect(stock_picker([98, 2844, 39, 93, 15, 3, 0, 2800])).to eql([6, 7])
  end
end
