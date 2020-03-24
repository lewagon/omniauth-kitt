# OmniAuth::Kitt

Provides an OAuth connection for Le Wagon alumni.

## Usage with Devise

Add this line to your application's `Gemfile`, then `bundle install`:

```ruby
gem 'omniauth-kitt'
```

Go to [kitt.lewagon.com/oauth/applications](https://kitt.lewagon.com/oauth/applications) and create a new application.

Callback URL will be `http(s)://HOST/users/auth/kitt/callback`

```ruby
Devise.setup do |config|
  config.omniauth :kitt, APP_ID, SECRET

  # [...]
end
```

Your `User` model needs this line:

```ruby
class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: [ :kitt ]

  # [...]
end
```

And your controller:

```ruby
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def kitt
    auth = request.env["omniauth.auth"]
    # [...]
  end
end
```

`auth` has the following keys:

- `id` as an integer
- `github_nickname` as a string
- `email`, `first_name`, `last_name` & `avatar_url` as strings
- `admin` as a boolean
- `cities` as an array of _slugs_ (City managers)
