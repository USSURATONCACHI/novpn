# Maintainer: Daniil Redchin <redchindaniil@gmail.com> <github.com/USSURATONCACHI>
pkgname=novpn
pkgver=1.0.1
pkgrel=1
pkgdesc="CLI tool to easily run programs with access to only one network device"
arch=('any')
url="https://github.com/USSURATONCACHI/novpn"
license=('Apache-2.0')

# Every single one is used and is essential
depends=('bash' 'firejail' 'iproute2' 'iptables' 'grep' 'gawk' 'coreutils' 'systemd')
makedepends=('coreutils')

install=novpn.install

source=(
    novpn
    novpn_get_gateway.sh
    novpn_ip_offset.sh
    novpn_ns_configure_default.sh
    novpn_ns_down.sh
    novpn_ns_params.sh
    novpn_ns_print_params.sh
    novpn_ns_up.sh

    novpn-config
    novpn-systemd.service
)
sha256sums=('b4034bd1653fda09aa82e8c65487d89afb4e345f864f51fdf6e1145dfca8b8af'
            '9265915e6d79677797a625515d4a2273d58ce1ec512e6511df31126f9fa01810'
            '856d623ca751333f010e804d60ee3cf3c794065c043df1027271a1c8db68edd2'
            'afc51f041a650cd5797061a862d41526067e119a1447d815f62933687fa355ea'
            'e3c669cac9df822e48b872567b4f46c194babf0fd8d61336c89e20f5c2573764'
            '88e35ca6d9fac320c5cd64a89dc7183c49655efd770c5e154ff8a2d5a7b5adc6'
            'c0139cf5c179aea7d50219474a3ae786530dedb26f4e7dd8fd4d2632e0545458'
            '2c9290c155def6dd20bd4d476f312312769f3612ddf207fa0bb02cefd0f97b29'
            'e7c20baf88e074c14c1c39f7c7a5ce3ebd12e6af02026a8f794171421aa7bd40'
            '9414e6063d1ad702241eb914304641308e6b38eca73a31e4212bc9ece48bf367')



package() {
    install -Dm755 "${srcdir}/novpn"                         "${pkgdir}/usr/bin/novpn"
    install -Dm755 "${srcdir}/novpn_get_gateway.sh"          "${pkgdir}/usr/bin/novpn_get_gateway.sh"
    install -Dm755 "${srcdir}/novpn_ip_offset.sh"            "${pkgdir}/usr/bin/novpn_ip_offset.sh"
    install -Dm755 "${srcdir}/novpn_ns_configure_default.sh" "${pkgdir}/usr/bin/novpn_ns_configure_default.sh"
    install -Dm755 "${srcdir}/novpn_ns_down.sh"              "${pkgdir}/usr/bin/novpn_ns_down.sh"
    install -Dm755 "${srcdir}/novpn_ns_params.sh"            "${pkgdir}/usr/bin/novpn_ns_params.sh"
    install -Dm755 "${srcdir}/novpn_ns_print_params.sh"      "${pkgdir}/usr/bin/novpn_ns_print_params.sh"
    install -Dm755 "${srcdir}/novpn_ns_up.sh"                "${pkgdir}/usr/bin/novpn_ns_up.sh"

    install -Dm644 "${srcdir}/novpn-config"             "${pkgdir}/etc/novpn"
    install -Dm644 "${srcdir}/novpn-systemd.service"    "${pkgdir}/usr/lib/systemd/system/novpn.service"
}
