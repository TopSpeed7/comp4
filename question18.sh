git branch -r

# Merge all branches whose names begin with ready to main
for branch in $(git branch -r | grep 'ready'); do
    git checkout main
    git merge ${branch#origin/}
done

# Resolve any merge conflicts
git add .
git commit -m "Resolved merge conflicts"

# Delete those branches
for branch in $(git branch -r | grep 'ready'); do
    git push origin --delete ${branch#origin/}
done

# Update all branches whose names begin with update so that they have the latest changes from main
for branch in $(git branch -r | grep 'update'); do
    git checkout ${branch#origin/}
    git merge main
    git push origin ${branch#origin/}
done
