mkdir -p /conf

apt update
apt upgrade -y
apt install glances -y
apt -y install software-properties-common git curl vim bash-completion

apt install ufw -y

sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

apt -y install cockpit-doc cockpit-sosreport xdg-utils udisks2-btrfs udisks2-lvm2 sssd-dbus libparted-dev libparted-i18n libteam-utils parted-doc btrfs-progs f2fs-tools nilfs-tools reiserfsprogs udftools udisks2-bcache udisks2-zram comgt wvdial

qemu-kvm
libvirt-clients
libvirt-daemon-system
virtinst
virt-manager
libvirt-daemon
virt-viewer
libspice-server1

install ntp

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

install podman


CEPH_RELEASE=18.2.4
curl --silent --remote-name --location https://download.ceph.com/rpm-${CEPH_RELEASE}/el9/noarch/cephadm
chmod +x cephadm
