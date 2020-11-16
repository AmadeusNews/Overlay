EAPI=7

# 8,9 not on dev-python/pyamg
PYTHON_COMPAT=( python3_{6..7} )
DISTUTILS_USE_SETUPTOOLS=rdepend
inherit distutils-r1 optfeature

DESCRIPTION="Image processing routines for SciPy"
HOMEPAGE="https://scikit-image.org/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
  dev-python/imageio[${PYTHON_USEDEP}]
  dev-python/matplotlib[${PYTHON_USEDEP}]
  dev-python/networkx[${PYTHON_USEDEP}]
  dev-python/numpy[${PYTHON_USEDEP}]
  dev-python/pillow[${PYTHON_USEDEP}]
  dev-python/pywavelets[${PYTHON_USEDEP}]
  dev-python/scipy[sparse,${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
  dev-python/cython[${PYTHON_USEDEP}]
  dev-python/setuptools[${PYTHON_USEDEP}]
"

DOCS=( CONTRIBUTORS.txt RELEASE.txt )

pkg_postinst() {
  optfeature "FITS io capability" dev-python/astropy
  optfeature "GTK" dev-python/pygtk
  optfeature "Parallel computation" dev-python/dask
  optfeature "io plugin providing most standard formats" dev-python/imread
}
