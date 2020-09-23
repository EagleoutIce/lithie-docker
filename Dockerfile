FROM alpine:latest

# Profile
ARG target_profile=tx-small
# Add the final texlive to the path
ENV PATH="${PATH}:/opt/texlive/texdir/bin/x86_64-linuxmusl"

COPY README.md setup-docker.sh LICENSE /
COPY profiles/ /profiles/

# Configure Python
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

RUN chmod +x /setup-docker.sh
RUN /setup-docker.sh ${target_profile}

CMD ["/bin/bash"]