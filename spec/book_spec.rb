require_relative '../book'

describe 'Book' do
  context 'Check the Constructor method' do
    before(:each) do
      @book = Book.new('The Alchemist', 'Paulo Coelho')
    end
    it 'Should take the title and author' do
      expect(@book.title).to eq('The Alchemist')
      expect(@book.title).not_to eq('Harry Potters')
      expect(@book.author).to eq('Paulo Coelho')
      expect(@book.author).not_to eq('JK Rowling')
    end
    it 'Should take the title and author' do
      new_book = Book.new('Think and Grow Rich', 'Napoleon Hill')
      expect(new_book.title).to eq('Think and Grow Rich')
      expect(new_book.title).not_to eq('The Lord Of The Ring')
      expect(new_book.author).to eq('Napoleon Hill')
      expect(new_book.author).not_to eq('Tolkiens')
    end
  end
end
