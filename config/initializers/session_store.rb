if Rails.env === 'production' 
    Rails.application.config.session_store :cache_store, key: '_task_API_session', domain: '127.0.0.1:4000'
else
    Rails.application.config.session_store :cookie_store, key: '_task_API' 
end