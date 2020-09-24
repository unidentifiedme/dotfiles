#! /usr/local/bin/zsh

# rsync is required on remote
remotes=(kumiko mizore nozomi)

for remote in ${remotes[@]}; do
	rsync --exclude ".git" --exclude "sync.sh" --exclude "backup.sh" -r . $remote:~
done

