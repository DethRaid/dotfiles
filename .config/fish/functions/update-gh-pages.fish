function update-gh-pages
    rm -r ~/gh-pages-doc/* 

    cp -r doc/* ~/gh=pages-doc/
    git checkout gh-pages
    rm -r *
    cp -r ~/gh-pages-doc ./
    
    acp

    git checkout dev
end
