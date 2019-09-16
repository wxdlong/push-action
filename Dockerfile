FROM alpine/git:1.0.7

LABEL "com.github.actions.name"="Deploy to GitHub Pages" \
    "com.github.actions.description"="This action will handle the building and deploying process of your project to GitHub Pages." \
    "com.github.actions.icon"="git-commit" \
    "com.github.actions.color"="orange" \
    "repository"="http://github.com/JamesIves/gh-pages-github-action" \
    "homepage"="https://ycat.top" \
    "maintainer"="wxdlong <wxdlong@qq.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]