require_relative '../book'
require_relative '../modules/save_data'
describe Book do
  let(:book) { Book.new('Game of Thrones: three-eyed crow', 'Anicet LAMONTAGNE') }

  describe '#title' do
    it 'returns the title' do
      expect(book.title).to eq('Game of Thrones: three-eyed crow')
    end
  end

  describe '#author' do
    it 'returns the author' do
      expect(book.author).to eq('Anicet LAMONTAGNE')
    end
  end
end
