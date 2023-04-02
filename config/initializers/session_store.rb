if Rails.env === 'production' 
    {Rails.application.config.session_store :cookie_store, key: '_phase_4_project_api', domain: 'phase_4_project_api-json-api'}
  else
    {Rails.application.config.session_store :cookie_store, key: '_phase_4_project_api'}