# panehop plugin for TPM (Tmux Plugin Manager)
# A pane switcher plugin using fzf with session switching capabilities

# Ensure the switcher scripts are executable
run-shell "[ -x \"#{@tmp_plugins_path}/panehop/bin/tmux-session-switcher\" ] || chmod +x \"#{@tpm_plugins_path}/panehop/bin/tmux-session-switcher\""

# Set default key bindings if not set
if -F "#{==:#{@tmux_session_next_key},}" "set -g @tmux_session_next_key ')'"
if -F "#{==:#{@tmux_session_prev_key},}" "set -g @tmux_session_prev_key '('"

# Bind keys for session switching with popup display
bind-key "#{@tmux_session_next_key}" run-shell "#{@tpm_plugins_path}/tmux-panehop/bin/tmux-session-switcher next"
bind-key "#{@tmux_session_prev_key}" run-shell "#{@tpm_plugins_path}/tmux-panehop/bin/tmux-session-switcher prev"
