FROM rails:onbuild
RUN bundle install -j3 --path vendor/bundle
RUN bundle exec rake db:migrate
