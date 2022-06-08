FROM registry.access.redhat.com/ubi8/ubi
ADD zenvia_sms /usr/local/bin
ENTRYPOINT "/usr/local/bin/zenvia_sms"
