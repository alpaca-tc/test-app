# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'

RSpec.describe 'root/index.html.erb', type: :view do
  it do
    # expected no Exception, got #<ActionView::MissingTemplate: Missing template root/index with {:locale=>[:en], :formats=>[:html], :...ariants=>[], :handlers=>["erb"]}.
    expect { render }.to_not raise_error
  end
end
