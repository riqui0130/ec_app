# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  end_at     :datetime         not null
#  name       :string           not null
#  place      :string           not null
#  start_at   :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#
# Indexes
#
#  index_events_on_owner_id  (owner_id)
#
class Event < ApplicationRecord
  validates :name, length: {maximum: 50 }, presence: true
  validates :place, length: {maximum: 100 }, presence: true
  validates :content, length: {maximum: 2000 }, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :start_at_should_be_before_end_at

  private

  def start_at_should_be_before_end_at
    return unless start_at && end_at

    if start_at >= end_at
      errors.add(:start_at, "は終了時間よりも前に設定してください")
    end
  end
end
