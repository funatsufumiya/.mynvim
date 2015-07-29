task :apply do
  # Apply vimrc
  sh "rm -f ~/.vimrc ~/.gvimrc"
  sh "ln -s ~/.myvim/vimrc ~/.vimrc"
  sh "ln -s ~/.myvim/vimrc ~/.gvimrc"

  # Apply colors
  sh "mkdir -p ~/.vim/colors && cp ~/.myvim/color/vim-atom-dark/colors ~/.vim/colors"
end

task :push do
  mes = "Updated"
  if ENV['m'] != nil
    mes = ENV['m']
  else
    puts "Usage: rake push m='commit message'"
    exit 1
  end

  sh "git add --all"
  sh "git commit -m '#{mes}' && echo -e '\\n'; git push -u origin master"
end
