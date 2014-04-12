class FixSectionableTypesForAttachments < ActiveRecord::Migration
  def up
    KnowledgeBase::Section
      .where(sectionable_type: 'KnowledgeBase::Sectionables::AttachmentList')
      .update_all sectionable_type: 'KnowledgeBase::Sectionables::Attachments::List'
  end

  def down
    KnowledgeBase::Section
      .where(sectionable_type: 'KnowledgeBase::Sectionables::Attachments::List')
      .update_all sectionable_type: 'KnowledgeBase::Sectionables::AttachmentList'
  end
end
