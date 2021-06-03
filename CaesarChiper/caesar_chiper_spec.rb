require './lib/caesar_cipher.rb'

describe CaesarCipher do
  subject { CaesarCipher.new }

  describe '#encrypting' do
    it 'works with small positive shift' do
      expect(subject.encrypting('Zz', 5)).to eql('Ee')
    end

    it 'works with small negative shift' do
      expect(subject.encrypting('Ee', -5)).to eql('Zz')
    end

    it 'works with large positive shift' do
      expect(subject.encrypting('Zz', 83)).to eql('Ee')
    end

    it 'works with large negative shift' do
      expect(subject.encrypting('Ee', -83)).to eql('Zz')
    end

    it 'works with a phrase with punctuation' do
      expect(subject.encrypting('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    it 'works with a phrase with a large shift' do
      expect(subject.encrypting('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    it 'works with a phrase with a large negative shift' do
      expect(subject.encrypting('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end
  end
end