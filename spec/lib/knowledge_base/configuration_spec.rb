require 'spec_helper'

describe KnowledgeBase::Configuration do
  {
    storage: 'fog'
  }.each do |key, value|
    
    it "can configure #{key}" do
      subject.send "#{key}=", 'configuration'

      expect(subject.send(key)).to eq 'configuration'
    end
  end
end
