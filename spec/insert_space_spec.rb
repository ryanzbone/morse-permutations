require 'spec_helper'
require './insert_space'

describe InsertSpace do

  subject { described_class.new() }

  describe '#permutations' do
    context 'a single character' do
      it 'returns a single permutation' do
        expect(subject.permutations('x')).to eq(['x'])
      end
    end
    context '2 characters' do
      it 'returns two permutations' do
        expect(subject.permutations('xx')).to include('x x', 'xx')
      end
    end
    context '3 characters' do
      it 'starts to get hard' do
        expect(subject.permutations('xxx')).to include(
          'xxx',
          'xx x',
          'x xx',
          'x x x',
        )
      end
    end
    context '4 characters' do
      it 'starts to gets harder' do
        expect(subject.permutations('xxxx')).to include(
          'xxxx',
          'xxx x',
          'xx xx',
          'xx x x',
          'x xxx',
          'x xx x',
          'x x xx',
          'x x x x',
        )
      end
    end
  end

end
