# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3

DESCRIPTION="An extension for the password store that allows to display and edit meta data..."
HOMEPAGE="https://github.com/palortoff/pass-extension-tail.git"
EGIT_REPO_URI="https://github.com/palortoff/pass-extension-tail.git"

SLOT="0"
LICENSE="GPL-3"
KEYWORDS="amd64 ~arm arm64 ~ppc64 x86 ~x86-macos"
IUSE=""

RDEPEND="
	app-admin/pass
	sys-apps/coreutils
"

src_prepare() {
	default
}

src_compile() {
	true
}

src_install() {
	emake DESTDIR="${D}" install
}
