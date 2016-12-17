FROM rails:onbuild
RUN bundle install -j3 --path vendor/bundle --without test production
RUN bundle exec rake db:migrate
