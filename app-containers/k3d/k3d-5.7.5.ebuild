# Copyright 2021-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module

DESCRIPTION="k3d creates k3s clusters in docker"
HOMEPAGE="https://github.com/rancher/k3d"

K3D_K3S_TAG=v1.31.2-k3s1
SRC_URI="https://github.com/rancher/k3d/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT Apache-2.0 BSD BSD-2 MPL-2.0 ISC"
SLOT="0"

KEYWORDS="amd64"
IUSE="doc"

src_prepare() {
	default
	rm Makefile || die
}

src_compile() {
	local extra_ldflags=(
		-X "github.com/k3d-io/k3d/v5/version.Version=v${PV}"
		-X "github.com/k3d-io/k3d/v5/version.K3sVersion=${K3D_K3S_TAG}"
	)
	env -u GOWORK \
	CGO_ENABLED=0 \
		go build \
		-mod=vendor \
		-ldflags "-w -s ${extra_ldflags[*]}" \
		-o bin/k3d || die
}

src_install() {
	dobin bin/${PN}
	DOCS=(*.md)
	if use doc; then
		DOCS+=(docs)
	fi
	default_src_install
}
