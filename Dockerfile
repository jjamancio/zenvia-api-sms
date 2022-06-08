FROM registry.access.redhat.com/ubi8/ubi
ADD zenvia_sms /usr/local/bin
RUN chmod +x /usr/local/bin/zenvia_sms
ENTRYPOINT "/usr/local/bin/zenvia_sms"
