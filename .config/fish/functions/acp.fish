function acp
    git status
    read -lp commit_prompt confirm

    switch $confirm
        case Y y
            ac
            git pull
            git push
            return 0
        case N n
            return 0
    end
end

function commit_prompt
    echo "Commit changes? (y/n)"
end

