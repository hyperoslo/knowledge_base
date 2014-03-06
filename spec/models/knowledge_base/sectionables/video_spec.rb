require 'spec_helper'

module KnowledgeBase
  describe Sectionables::Video do
    describe '#youtube_id' do
      let(:video) { create :video, url: 'http://www.youtube.com/watch?v=rv1o6Em9P7I' }

      it 'can derive its YouTube id' do
        expect(video.youtube_id).to eq 'rv1o6Em9P7I'
      end
    end
  end
end
