FROM opensuse/leap:15.1

RUN zypper --non-interactive addrepo https://download.opensuse.org/repositories/Virtualization:containers/openSUSE_Leap_15.1/Virtualization:containers.repo
RUN zypper --gpg-auto-import-keys refresh
RUN zypper --non-interactive install \
  bind-utils \
  curl \
  socat
