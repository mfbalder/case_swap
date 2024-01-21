# rubocop:disable Metrics/BlockLength

require_relative './swap_case'
RSpec.describe SwapCase do
  subject { SwapCase.execute(input) }

  context 'with special characters in input' do
    let(:input) { 'hello.' }
    it { expect { subject }.to raise_error }
  end

  context 'With valid input' do
    describe 'with lowercase letters' do
      let(:input) { 'hello' }
      it { expect(subject).to eq('HELLO') }
    end

    describe 'with uppercase letters' do
      let(:input) { 'HELLO' }
      it { expect(subject).to eq('hello') }
    end

    describe 'with upper and lowecase letters' do
      let(:input) { 'heLLo' }
      it { expect(subject).to eq('HEllO') }
    end

    describe 'with a space' do
      let(:input) { 'hello hello' }
      it { expect(subject).to eq('HELLO HELLO') }
    end

    describe 'with numbers' do
      let(:input) { 'h3llo' }
      it { expect(subject).to eq('H3LLO') }
    end
  end
end

# rubocop:enable Metrics/BlockLength
