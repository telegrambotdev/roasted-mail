# frozen_string_literal: true

Rails.application.routes.draw do # rubocop:disable Metrics/BlockLength
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :webhooks do
    post '/email_inbound', to: 'sendgrid#inbound'
    namespace 'sms' do
      post '/twilio', to: 'twilio#inbound_sms'
      post '/generic', to: 'generic#inbound_sms'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :mailbox, only: %i[show create destroy] do
        resources :emails, only: %i[index show destroy]
      end
    end
  end

  resources :phone_numbers, path: :phones, only: %i[index show], param: :number

  namespace :mailbox do
    resources :emails, only: %i[index destroy show], param: :email_id do
      member do
        get 'render_email_html'
      end
    end
    get 'inbox', action: :inbox
    get '', action: :index
    post '', action: :create, as: :create
    post 'logout', action: :logout, as: :logout
    delete '', action: :destroy, as: :destroy
    get '/:email/:token', action: :login, constraints: { email: %r{[^/]+} }, as: :login
  end

  resources :changelog, only: %i[index]

  root to: 'mailbox#index'
end
