FROM registry.access.redhat.com/ubi8/ubi
RUN chmod +x zenvia_sms
ADD zenvia_sms /usr/local/bin
ENTRYPOINT "/usr/local/bin/zenvia_sms"
