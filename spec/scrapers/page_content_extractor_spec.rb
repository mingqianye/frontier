require 'rails_helper'
describe PageContentExtractor do
  let (:noko) { File.open('spec/data/page.html') }
  let (:extrator) { PageContentExtractor.new(noko) }

  it 'should get title' do
    expect(extrator.title).to eq('AP 英语文学与写作 — 美国高中如何教 AP English Literature and Composition')
  end

  it 'should get raw_content' do
    expect(extrator.raw_content).to include('这门课程要求学生仔细阅读想象性的文学作品')
  end
end
