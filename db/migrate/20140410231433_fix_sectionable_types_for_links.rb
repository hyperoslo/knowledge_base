class FixSectionableTypesForLinks < ActiveRecord::Migration
  def up
    KnowledgeBase::Section
      .where(sectionable_type: 'KnowledgeBase::Sectionables::Links')
      .update_all sectionable_type: 'KnowledgeBase::Sectionables::Links::List'
  end

  def down
    KnowledgeBase::Section
      .where(sectionable_type: 'KnowledgeBase::Sectionables::Links::List')
      .update_all sectionable_type: 'KnowledgeBase::Sectionables::Links'
  end
end
