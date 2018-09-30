profile_standard() {
	title="Standard"
	desc="CryptOS as it was intended.
		Just enough to get you started.
		Network connection is required."
	profile_base
	image_ext="iso"
	apks="$apks syslinux accore"
	arch="x86 x86_64 ppc64le"
	output_format="iso"
	kernel_cmdline="nomodeset"
	apkovl="genapkovl-dhcp.sh"
	kernel_addons="xtables-addons"
}

profile_virt() {
	profile_standard
	title="Virtual"
	desc="Similar to standard.
		Slimmed down kernel.
		Optimized for virtual systems."
	kernel_addons=
	kernel_flavors="virt"
	kernel_cmdline="console=tty0 console=ttyS0,115200"
	syslinux_serial="0 115200"
}
