# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{6,7,8} )
inherit git-r3 python-single-r1

DESCRIPTION="Convert your system to SYMLINK_LIB=no"
HOMEPAGE="https://github.com/mgorny/unsymlink-lib"
SRC_URI=""
EGIT_REPO_URI="https://github.com/mgorny/unsymlink-lib.git"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	$(python_gen_cond_dep '
		sys-apps/portage[${PYTHON_MULTI_USEDEP}]
	')"

src_install() {
	python_doscript unsymlink-lib
	dodoc README
}
