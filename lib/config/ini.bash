source bash+ :std

Config::Ini:read() {
  [ $# -eq 2 ] ||
    die "Usage: read file/path section.key"
  local file="${1:?read requires file}"
  local key="${2:?read requires key}"

  git config -f "$file" "$key"
}

Config::Ini:write() {
  [ $# -eq 2 ] ||
    die "Usage: read file/path section.key"
  local file="${1:?read requires file}"
  local key="${2:?read requires key}"
  local value="${2:?read requires value}"

  git config -f "$file" "$key" "$value"
}
