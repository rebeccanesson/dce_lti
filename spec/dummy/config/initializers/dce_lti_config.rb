DceLti::Engine.setup do |lti|
  # "provider_*" attributes are used to describe this tool to the consumer,
  # where "consumer" is an LMS like canvas. The defaults are below, uncomment
  # and modify as necessary or (ideally) configure via environment variables.
  #
  # lti.provider_title = (ENV['LTI_PROVIDER_TITLE'] || 'DCE LTI Provider')
  # lti.provider_description = (ENV['LTI_PROVIDER_DESCRIPTION'] || 'A description of this')
  # lti.provider_icon_url =  (ENV['LTI_PROVIDER_ICON_URL'] || '//example.com/icon.png')
  # lti.provider_tool_id = (ENV['LTI_PROVIDER_TOOL_ID'] || '1234567890')
  # lti.redirect_after_successful_auth = ->{ Rails.application.routes.url_helpers.root_path }

  lti.consumer_secret = (ENV['LTI_CONSUMER_SECRET'] || 'consumer_secret')
  lti.consumer_key = (ENV['LTI_CONSUMER_KEY'] || 'consumer_key')

  # The consumer_secret and consumer_key should be a lambda that will be
  # evaluated in the context of your application. You might use a service
  # object or model proper to find key and secret pairs. Example:
  #
  # lti.consumer_secret = ->(launch_params) {
  #   Consumer.find_by(context_id: launch_params[:context_id]).consumer_secret
  # }
  # lti.consumer_key = ->(launch_params) {
  #   Consumer.find_by(context_id: launch_params[:context_id]).consumer_key
  # }
end
