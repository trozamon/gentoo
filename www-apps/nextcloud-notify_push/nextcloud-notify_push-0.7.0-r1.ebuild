# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.22.0
	adler@1.0.2
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi_term@0.12.1
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	arc-swap@1.7.1
	async-stream-impl@0.3.5
	async-stream@0.3.5
	async-trait@0.1.81
	atoi@0.3.3
	atoi@2.0.0
	atty@0.2.14
	autocfg@1.3.0
	backtrace-ext@0.2.1
	backtrace@0.3.73
	base64@0.13.1
	base64@0.21.7
	base64@0.22.1
	base64ct@1.6.0
	beef@0.5.2
	bitflags@1.3.2
	bitflags@2.6.0
	block-buffer@0.10.4
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.6.1
	cc@1.1.6
	cfg-if@1.0.0
	chrono@0.4.38
	clap@2.34.0
	clap@4.5.11
	clap_builder@4.5.11
	clap_derive@4.5.11
	clap_lex@0.7.2
	colorchoice@1.0.2
	combine@4.6.7
	concurrent-queue@2.5.0
	const-oid@0.9.6
	core-foundation-sys@0.8.6
	cpufeatures@0.2.12
	crc-catalog@2.4.0
	crc16@0.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crypto-common@0.1.6
	dashmap@6.0.1
	data-encoding@2.6.0
	der@0.7.9
	derivative@2.2.0
	digest@0.10.7
	dotenvy@0.15.7
	either@1.13.0
	encoding_rs@0.8.34
	equivalent@1.0.1
	errno@0.3.9
	etcetera@0.8.0
	event-listener@5.3.1
	fastrand@2.1.0
	flate2@1.0.30
	flexi_logger@0.28.5
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-intrusive@0.5.0
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.29.0
	glob@0.3.1
	h2@0.3.26
	hashbrown@0.14.5
	hashlink@0.9.1
	headers-core@0.2.0
	headers@0.3.9
	heck@0.3.3
	heck@0.5.0
	hermit-abi@0.1.19
	hermit-abi@0.3.9
	hex@0.4.3
	hkdf@0.12.4
	hmac@0.12.1
	home@0.5.9
	http-auth-basic@0.3.3
	http-body-util@0.1.2
	http-body@0.4.6
	http-body@1.0.1
	http@0.2.12
	http@1.1.0
	httparse@1.9.4
	httpdate@1.0.3
	hyper-rustls@0.27.2
	hyper-util@0.1.6
	hyper@0.14.30
	hyper@1.4.1
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	idna@0.5.0
	indexmap@2.2.6
	ipnet@2.9.0
	is_ci@1.2.0
	is_terminal_polyfill@1.70.1
	itoa@1.0.11
	js-sys@0.3.69
	lazy_static@1.5.0
	libc@0.2.155
	libm@0.2.8
	libsqlite3-sys@0.28.0
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.22
	logos-codegen@0.14.0
	logos-derive@0.14.0
	logos@0.14.0
	matchers@0.0.1
	md-5@0.10.6
	memchr@2.7.4
	miette-derive@7.2.0
	miette@7.2.0
	mime@0.3.17
	mime_guess@2.0.5
	mini-redis@0.4.1
	minimal-lexical@0.2.1
	miniz_oxide@0.7.4
	mio@1.0.1
	multer@2.1.0
	nextcloud-config-parser@0.11.0
	nextcloud_appinfo@0.6.0
	nom@7.1.3
	nu-ansi-term@0.50.1
	num-bigint-dig@0.8.4
	num-bigint@0.4.6
	num-integer@0.1.46
	num-iter@0.1.45
	num-traits@0.2.19
	object@0.36.2
	once_cell@1.19.0
	owo-colors@4.0.0
	parking@2.2.0
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	parse-display-derive@0.9.1
	parse-display@0.9.1
	paste@1.0.15
	pem-rfc7468@0.7.0
	percent-encoding@2.3.1
	peresil@0.3.0
	php-literal-parser@0.6.1
	pin-project-internal@1.1.5
	pin-project-lite@0.2.14
	pin-project@1.1.5
	pin-utils@0.1.0
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.30
	ppv-lite86@0.2.17
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.86
	quick-error@1.2.3
	quinn-proto@0.11.3
	quinn-udp@0.5.4
	quinn@0.11.2
	quote@1.0.36
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redis@0.26.0
	redox_syscall@0.4.1
	redox_syscall@0.5.3
	regex-automata@0.1.10
	regex-automata@0.4.7
	regex-syntax@0.6.29
	regex-syntax@0.8.4
	regex@1.10.5
	reqwest@0.12.5
	rfc7239@0.1.1
	ring@0.17.8
	rsa@0.9.6
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustix@0.38.34
	rustls-pemfile@1.0.4
	rustls-pemfile@2.1.2
	rustls-pki-types@1.7.0
	rustls-webpki@0.101.7
	rustls-webpki@0.102.6
	rustls@0.21.12
	rustls@0.22.4
	rustls@0.23.12
	ryu@1.0.18
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sct@0.7.1
	sd-notify@0.4.2
	semver-parser@0.7.0
	semver@0.10.0
	serde@1.0.204
	serde_derive@1.0.204
	serde_json@1.0.120
	serde_urlencoded@0.7.1
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	signal-hook-registry@1.4.2
	signature@2.2.0
	slab@0.4.9
	smallvec@1.13.2
	smawk@0.3.2
	socket2@0.5.7
	spin@0.9.8
	spki@0.7.3
	sqlformat@0.2.4
	sqlx-core@0.8.0
	sqlx-macros-core@0.8.0
	sqlx-macros@0.8.0
	sqlx-mysql@0.8.0
	sqlx-postgres@0.8.0
	sqlx-sqlite@0.8.0
	sqlx@0.8.0
	stringprep@0.1.5
	strsim@0.11.1
	strsim@0.8.0
	structmeta-derive@0.3.0
	structmeta@0.3.0
	structopt-derive@0.4.18
	structopt@0.3.26
	subtle@2.6.1
	supports-color@3.0.0
	supports-hyperlinks@3.0.0
	supports-unicode@3.0.0
	sxd-document@0.3.2
	sxd-xpath@0.4.2
	syn@1.0.109
	syn@2.0.72
	sync_wrapper@1.0.1
	tempfile@3.10.1
	terminal_size@0.3.0
	textwrap@0.11.0
	textwrap@0.16.1
	thiserror-impl@1.0.63
	thiserror@1.0.63
	thread_local@1.1.8
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio-macros@2.4.0
	tokio-rustls@0.25.0
	tokio-rustls@0.26.0
	tokio-stream@0.1.15
	tokio-tungstenite@0.21.0
	tokio-tungstenite@0.23.1
	tokio-util@0.7.11
	tokio@1.39.1
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-futures@0.2.5
	tracing-log@0.1.4
	tracing-serde@0.1.3
	tracing-subscriber@0.2.25
	tracing@0.1.40
	try-lock@0.2.5
	tungstenite@0.21.0
	tungstenite@0.23.0
	typed-arena@1.7.0
	typenum@1.17.0
	uncased@0.9.10
	unicase@2.7.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.23
	unicode-properties@0.1.1
	unicode-segmentation@1.11.0
	unicode-width@0.1.13
	unicode_categories@0.1.1
	untrusted@0.9.0
	ureq@2.10.0
	url@2.5.2
	urlencoding@2.1.3
	utf-8@0.7.6
	utf8parse@0.2.2
	valuable@0.1.0
	vcpkg@0.2.15
	vec_map@0.8.2
	version_check@0.9.5
	want@0.3.1
	warp-real-ip@0.2.0
	warp@0.3.7
	wasi@0.11.0+wasi-snapshot-preview1
	wasite@0.1.0
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	webpki-roots@0.25.4
	webpki-roots@0.26.3
	whoami@1.5.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winreg@0.52.0
	xpath_reader@0.5.3
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
"

inherit cargo eapi9-ver systemd

DESCRIPTION="Push daemon for Nextcloud clients"
HOMEPAGE="https://github.com/nextcloud/notify_push"
SRC_URI="https://github.com/nextcloud/notify_push/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

S="${WORKDIR}/notify_push-${PV}"

LICENSE="AGPL-3"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD GPL-3 ISC MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64 ~x86"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
	einstalldocs

	# default name is too generic
	mv "${ED}/usr/bin/notify_push" "${ED}/usr/bin/${PN}" || die

	newconfd "${FILESDIR}/${PN}-r1.confd" "${PN}"
	newinitd "${FILESDIR}/${PN}-r2.init" "${PN}"
	systemd_newunit "${FILESDIR}/${PN}.service-r1" "${PN}.service"
	systemd_install_serviced "${FILESDIR}/${PN}.service.conf" "${PN}"

	# restrict access because conf.d entry could contain
	# database credentials
	fperms 0640 "/etc/conf.d/${PN}"
}

pkg_postinst() {
	if ver_replacing -lt "0.6.6"; then
		ewarn "You are upgrading from $oldver to ${PVR}"
		ewarn "The systemd unit file for nextcloud-notify_push no longer sources ${EPREFIX}/etc/conf.d/nextcloud-notify_push ."
		ewarn "Configuration is still done via ${EPREFIX}/etc/conf.d/nextcloud-notify_push for OpenRC systems"
		ewarn "while for systemd systems, a systemd drop-in file located at"
		ewarn "${EPREFIX}/etc/systemd/system/nextcloud-notify_push.d/00gentoo.conf"
		ewarn "is used for configuration."
	fi
}
