class Event < ApplicationRecord
    # モデルの関連定義
    belongs_to :user, foreign_key: 'user_id'
    belongs_to :pref, foreign_key: 'pref_id'
    has_many :event_apps, dependent: :destroy
  
    # 追加のattribute
    attribute :remove_img1, :boolean
    attribute :remove_img2, :boolean
    attribute :remove_img3, :boolean
    attribute :remove_img4, :boolean
  
    before_save do
      remove_photo_url1! if remove_img1
      remove_photo_url2! if remove_img2
      remove_photo_url3! if remove_img3
      remove_photo_url4! if remove_img4
    end
  
    # バリデーション
    validates :event_name, presence: true, length: { maximum: 255 }
    validates :event_date, presence: true
    validates :pref_id, presence: true
    validates :user_id, presence: true
    validates :event_published_flg, inclusion: { in: [false, true] }
    validates :event_detail, length: { maximum: 2000 }
    validates :city, length: { maximum: 255 }
    validates :place_detail, length: { maximum: 255 }
    validates :event_recruiting_flg, inclusion: { in: [false, true] }
    validates :event_recruit_number, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
    validates :event_entrance_fee, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
    validate :valid_date
  
    # カスタムのバリデーションメソッド
    def valid_date
      if event_recruit_start_date.present?
        if event_recruit_end_date.present?
          errors.add(:event_recruit_start_date, 'は募集終了日より前の日付で指定してください') if event_recruit_start_date > event_recruit_end_date
        end
      end
    end
  
    # ファイルアップロード
    mount_uploader :photo_url1, AvatarUploader
    mount_uploader :photo_url2, AvatarUploader
    mount_uploader :photo_url3, AvatarUploader
    mount_uploader :photo_url4, AvatarUploader
  
    # 区分値
    enum event_recruiting_flgs: { '募集しない' => false, '募集する' => true }
    enum event_published_flgs: { '下書き' => false, '公開' => true }
  
    # クエリ
    scope :search_with_pref, ->(pref_id) { where(pref_id: pref_id) }
    scope :search_with_start, ->(event_date_from) { where('event_date >= ?', event_date_from) }
    scope :search_with_end, ->(event_date_to) { where('event_date <= ?', event_date_to) }
end