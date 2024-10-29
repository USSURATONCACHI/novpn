pkgname="novpn"
pkgver="1.0.0"
pkgrel=1
pkgdesc="CLI tool to easily run programs with access to only one network device. Specify one in /etc/novpn"
arch=('x86_64')
license=('Do whatever you want')
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
sha512sums=("SKIP" "SKIP" "SKIP" "SKIP" "SKIP" "SKIP" "SKIP" "SKIP" "SKIP" "SKIP")

install=novpn.install

depends=('bash' 'firejail' 'iproute2' 'iptables' 'grep' 'gawk' 'coreutils' 'systemd')

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
