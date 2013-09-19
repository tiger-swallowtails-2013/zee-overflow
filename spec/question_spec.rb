describe Question do
  describe 'validations' do
    it "does not save if you don't provide a title" do
      question = Question.create
      expect(question).not_to be_persisted
    end
    it "saves when you do provide a title" do
      question = Question.create(title: "foo")
      expect(question).to be_persisted
    end
  end

end
