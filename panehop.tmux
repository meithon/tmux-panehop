# panehop plugin for TPM (Tmux Plugin Manager)
# A pane switcher plugin using fzf

# Ensure the switcher script is executable
run-shell "[ -x \"#{@tpm_plugins_path}/panehop/bin/panehop\" ] || chmod +x \"#{@tpm_plugins_path}/panehop/bin/panehop\""

# Set default key binding if not set (default: prefix + s)
if -F "#{==:#{@tmux_panehop_key},}" "set -g @tmux_panehop_key 's'"

# Bind prefix + @tmux_panehop_key to launch panehop script
bind-key "#{@tmux_panehop_key}" run-shell "#{@tpm_plugins_path}/panehop/bin/panehop"