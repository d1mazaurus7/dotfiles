
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
ZSH_THEME="" 
eval "$(starship init zsh)"
fastfetch
alias update='yay -Syu'
scdownload() {
    yt-dlp --extract-audio --audio-format mp3 --embed-thumbnail --add-metadata -o "~/Music/%(title)s.%(ext)s" "$1"
}
export PATH="$HOME/.cargo/bin:$PATH"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=248'
