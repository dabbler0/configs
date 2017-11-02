function fish_title
  echo -ne $USER
  echo -ne '@'
  hostname
  echo -ne ": "
  pwd
end
