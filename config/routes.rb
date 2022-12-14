# frozen_string_literal: true

Rails.application.routes.draw do
  root 'server#result', as: 'home'
end
