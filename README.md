# Skroutz Girls Do Tech

- [Rails Girls Guides](https://guides.railsgirls.com/)
  - **[4. Build Your First App](https://guides.railsgirls.com/app)**


## Chapter 4: Build Your First App

Σε αυτό το κεφάλαιο, αμέσως μετά το βήμα `cd railsgirls` και πριν εκτελέσετε την εντολή `rails server` θα χρειαστεί να αντιγράψετε τις παρακάτω γραμμές στο τέλος του αρχείου `projects/railsgirls/config/environments/development.rb` ακριβώς πάνω από την εντολή `end`:

```ruby
  pf_domain = ENV['GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN']
  config.action_dispatch.default_headers = {
    'X-Frame-Options' => "ALLOW-FROM #{pf_domain}"
  }

  pf_host = "#{ENV['CODESPACE_NAME']}-3000.#{pf_domain}"
  config.hosts << pf_host

  config.action_cable.allowed_request_origins = ["https://#{pf_host}"]
  config.action_controller.allow_forgery_protection = false
```



## All chapters
- [4. Build Your First App](https://guides.railsgirls.com/app)
- [5. Style your app using HTML and CSS](https://guides.railsgirls.com/html-and-css)
- [6. Add a new page to your app](https://guides.railsgirls.com/new-page)
- [7. Add a new homepage to your app](https://guides.railsgirls.com/new-homepage)
- [8. Add picture uploads](https://guides.railsgirls.com/uploads)
- [9. Push Your App to GitHub](https://guides.railsgirls.com/github)
- [10. Put Your App Online](https://guides.railsgirls.com/deployment)
- [11. Style the idea pages using HTML and CSS](https://guides.railsgirls.com/design)
- [12. Add comments to your app](https://guides.railsgirls.com/commenting)
- [13. Create picture thumbnails](https://guides.railsgirls.com/thumbnails)
- [14. Test your application with RSpec](https://guides.railsgirls.com/testing-rspec)