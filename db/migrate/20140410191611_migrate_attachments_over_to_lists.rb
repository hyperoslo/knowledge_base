class MigrateAttachmentsOverToLists < ActiveRecord::Migration
  def up
    KnowledgeBase::Sectionables::Attachment.all.each do |attachment|
      sections = KnowledgeBase::Section
        .where(sectionable_type: 'KnowledgeBase::Sectionables::Attachment')
        .where(sectionable_id: attachment.id)

      list = KnowledgeBase::Sectionables::AttachmentList.new
      list.attachments << attachment
      list.sections = sections

      list.save!
    end
  rescue StandardError
    # Do nothing
  end

  def down
    KnowledgeBase::Sectionables::AttachmentList.all.each do |list|
      sections = KnowledgeBase::Section
        .where(sectionable_type: 'KnowledgeBase::Sectionables::AttachmentList')
        .where(sectionable_id: list.id)

      list.attachments.all.each do |attachment|
        attachment.sections = sections

        attachment.save!
      end
    end
  rescue StandardError
    # Do nothing
  end
end
