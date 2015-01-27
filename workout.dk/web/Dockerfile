FROM phusion/passenger-ruby21
MAINTAINER dennis "dennis@moellegaard.dk"

ENV HOME /root
ENV RAILS_ENV production

CMD ["/sbin/my_init"]

RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD nginx.conf /etc/nginx/sites-enabled/workout_website.conf
ADD rails-env.conf /etc/nginx/main.d/rails-env.conf

ADD app.tar.gz /home/app/workout_website/
WORKDIR /home/app/workout_website
ADD database.yml /home/app/workout_website/config/database.yml
ADD production.rb /home/app/workout_website/config/environments/production.rb
RUN chown -R app:app /home/app/workout_website
RUN sudo -u app bundle install --deployment --without=test,development
RUN sudo -u app RAILS_ENV=production bundle exec rake assets:precompile

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
