class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable,
          omniauth_providers: [ :google_oauth2, :facebook ]

  has_many :accounts, dependent: :destroy

  after_create :create_default_account

  private

  def create_default_account
    accounts.create!(account_type: :cash, name: 'Default Cash Account')
  end
end
