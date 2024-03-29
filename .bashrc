_dotfiles_load_scripts() {
	local script
	local header
	
	for script in $HOME/.bashrc.d/*; do
		if [ -f "$script" ]; then
			if [ -z "$header" ]; then
				echo "Loading scripts:"
				header="x"
			fi

			printf "\t%s\n" "$script"
			. "$script"
		fi
	done

	if [ -z "$header" ]; then
		echo
	fi
}

_dotfiles_load_scripts "$@"
unset _dotfiles_load_scripts

