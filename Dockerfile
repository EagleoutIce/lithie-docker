FROM alpine:latest

LABEL version="1.0" author="Florian Sihler" git="https://github.com/EagleoutIce/lithie-docker"

# Profile
ARG target_profile=tx-small

# Add the final texlive to the path and
# Configure Python
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 PATH="${PATH}:/opt/texlive/texdir/bin/x86_64-linuxmusl"

COPY README.md setup-docker.sh LICENSE /
COPY profiles/ /profiles/

RUN chmod +x /setup-docker.sh && /setup-docker.sh ${target_profile}

USER lithie-user

CMD ["/bin/bash"]