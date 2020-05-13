Geocoder.configure(
  timeout: 3,                
  lookup: :google,            
  ip_lookup: :ipinfo_io,      
  language: :en,              
  use_https: false,           
  http_proxy: nil,            
  https_proxy: nil,          
  api_key: Rails.application.credentials.dig(:google, :api_key),
  cache: nil,               
  cache_prefix: 'geocoder:',
  units: :km,
  distances: :linear
)