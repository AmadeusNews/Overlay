# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A Qt wrapper for libolm"
HOMEPAGE="https://gitlab.com/b0/libQtOlm"

inherit eutils cmake-utils

if [[ ${PV} == "9999" ]]; then
	inherit git-r3

	SRC_URI=""
	EGIT_REPO_URI="https://gitlab.com/b0/${PN}.git"
else
	SRC_URI="https://gitlab.com/b0/${PN}/-/archive/${PV}/${PN}.tar.gz -> ${P}.tar.gz"
fi

KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-qt/qtcore
	dev-libs/olm
"
