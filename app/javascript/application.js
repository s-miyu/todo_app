// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
// import "controllers"

// app/javascript/entrypoints/application.js
import { start } from '@rails/ujs'
import { Turbo } from '@hotwired/turbo-rails'
import 'stylesheets/application'
import 'controllers'

start()
Turbo.start()
