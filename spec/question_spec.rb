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

  describe "#heart_count" do
    it "counts hearts created for the question" do
      question = Question.create(title: "Why do you like pandas?")
      question.hearts.create
      question.hearts.create
      expect(question.heart_count).to eq 2
    end
    it "does not include hearts created for other questions" do

      question1 = Question.create(title: "What is your favorite ice cream?")
      question2 = Question.create(title: "What is your favorite wine?")
      question1.hearts.create
      question1.hearts.create
      question1.hearts.create
      question2.hearts.create

      expect(question1.heart_count).to eq 3
    end
  end
end
