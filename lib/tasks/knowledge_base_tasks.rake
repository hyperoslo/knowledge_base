namespace :knowledge_base do
  desc 'Seed the knowledge base with example data'
  task seed: :environment do
    require 'knowledge_base/seeds'
  end
end
