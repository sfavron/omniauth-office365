# OmniAuth Office 365

This gem contains the unofficial Office365 strategy for OmniAuth.

## Basic Usage

	use OmniAuth::Builder do
		provider "office365", ENV['OFFICE365_CLIENT_ID'], ENV['OFFICE365_SECRET'], :scope => 'https://outlook.office.com/mail.read'
	end

## Supported Flows

for create app
https://manage.dev.live.com/Applications/Index?wa=wsignin1.0
OR
https://manage.dev.live.com/AddApplication.aspx?tou=1

## Ruby

Tested with the following Ruby versions:

- RUBY 2.2.2
