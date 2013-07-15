#First app using mongo db
==========================

**Imp Environment configuration setup**

```ruby
	config.before_configuration do 

	        env_file = File.join(Rails.root,'config','dev_env.yml')
	        YAML.load(File.open(env_file)).each do |key,value|
	          ENV[key.to_s] = value
	        end if File.exists?(env_file)
	end
```
**Better errors setting in development environment**

```ruby
BetterErrors::Middleware.allow_ip! ENV['TRUSTED_IP'] if ENV['TRUSTED_IP']
```

**For `logstasher` gem**

```ruby
  config.logstasher.enabled = true

  config.logstasher.suppress_app_log = false
```