# gitについて

```
 $ git init
Initialized empty Git repository in /Users/4geru/watnow/webserver/.git/
4geru:~/watnow/webserver (master #%)
 $ git status
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

  .bundle/
  Gemfile
  Gemfile.lock
  app.rb
  vendor/
  views/

nothing added to commit but untracked files present (use "git add" to track)
 $ subl3 .gitignore
```

/.gitignore

```.gitignore
.bundle/
vendor/
```

```
 $ git status
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

  .gitignore
  Gemfile
  Gemfile.lock
  app.rb
  views/

nothing added to commit but untracked files present (use "git add" to track)

 $ git add -A
 $ git status
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

  new file:   .gitignore
  new file:   Gemfile
  new file:   Gemfile.lock
  new file:   app.rb
  new file:   views/index.erb
 $ git commit -m 'first commit'
[master (root-commit) 6801197] first commit
 5 files changed, 43 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 Gemfile
 create mode 100644 Gemfile.lock
 create mode 100644 app.rb
 create mode 100644 views/index.erb
```

remote repositoryにpushする時
remote repositoryと繋がっている確認

```
 $ git remote -v
```

remote が追加されていない場合

```
 $ git remote add origin https://github.com/Rp7rf/web-server.git
 $ git push -u origin master
```