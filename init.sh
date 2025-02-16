repos=("alleycat" "bluefox" "choco" "latte" "plushies" "edulis")

for repo in "${repos[@]}"; do
    git clone "https://github.com/akootco/$repo"
done