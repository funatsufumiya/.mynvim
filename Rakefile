task :apply do
  # Apply vimrc
  sh "rm -f ~/.vimrc ~/.gvimrc"
  sh "ln -s ~/.myvim/vimrc ~/.vimrc"
  sh "ln -s ~/.myvim/vimrc ~/.gvimrc"
 
  # Apply colors
  sh "mkdir -p ~/.vim/colors && cp ~/.myvim/color/vim-atom-dark/colors ~/.vim/colors"
end

task :push do |mes|
  sh "git add --all"
  sh "git commit -m '#{mes}' && git push -u origin master"
end
