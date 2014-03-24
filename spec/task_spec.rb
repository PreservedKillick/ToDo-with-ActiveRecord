require 'spec_helper'

describe Task do
  describe '.not_done' do
    it 'can return the tasks that are not yet done' do
      not_done_tasks = (1..5).to_a.map { |number| Task.create(:name => "task #{number}", :done => false) }
      done_task = Task.create({:name => "done task", :done => true})
      Task.not_done.should eq not_done_tasks
    end
  end
  it { should belong_to :list }
end
