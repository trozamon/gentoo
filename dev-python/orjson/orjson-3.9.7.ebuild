# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6.1

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=maturin
PYTHON_COMPAT=( python3_{10..11} )

CRATES="
	ahash@0.8.3
	arrayvec@0.7.4
	associative-cache@1.0.1
	autocfg@1.1.0
	beef@0.5.2
	bytecount@0.6.3
	castaway@0.2.2
	cc@1.0.83
	cfg-if@1.0.0
	chrono@0.4.30
	compact_str@0.7.1
	encoding_rs@0.8.33
	itoa@1.0.9
	itoap@1.0.1
	libc@0.2.147
	libm@0.1.4
	libm@0.2.7
	no-panic@0.1.26
	num-traits@0.2.16
	once_cell@1.18.0
	packed_simd@0.3.9
	packed_simd_2@0.3.8
	proc-macro2@1.0.66
	pyo3-build-config@0.19.2
	pyo3-ffi@0.19.2
	quote@1.0.33
	rustversion@1.0.14
	ryu@1.0.15
	serde@1.0.188
	serde_derive@1.0.188
	serde_json@1.0.105
	simdutf8@0.1.4
	smallvec@1.11.0
	static_assertions@1.1.0
	syn@2.0.31
	target-lexicon@0.12.11
	unicode-ident@1.0.11
	version_check@0.9.4
"

inherit cargo distutils-r1 pypi

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="
	https://github.com/ijl/orjson/
	https://pypi.org/project/orjson/
"
SRC_URI+="
	${CARGO_CRATE_URIS}
"

LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD MIT Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="amd64 arm arm64 ~loong ~ppc ~ppc64 ~riscv ~s390 ~sparc x86"

BDEPEND="
	test? (
		dev-python/arrow[${PYTHON_USEDEP}]
		dev-python/pendulum[${PYTHON_USEDEP}]
		dev-python/psutil[${PYTHON_USEDEP}]
		dev-python/pytz[${PYTHON_USEDEP}]
		$(python_gen_cond_dep '
			dev-python/numpy[${PYTHON_USEDEP}]
		' 'python3*')
	)
"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest
