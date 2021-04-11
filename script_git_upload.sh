git branch -D centrino;
git branch centrino;
git pull;
#Log file -------------------------------------------------------------------------------------------
echo "$(date +%Y)/$(date +%m)/$(date +%d)-$(date +%H):$(date +%M)" > log_git_upload.txt; 
echo "IFPR Labtelecom, Prof. Gustavo Theodoro Laskoski, D. Sc." >> log_git_upload.txt;
#git add log_git_upload.txt;
git add .;
#Git commit and upload ------------------------------------------------------------------------------
git commit -m "$(date +%Y)/$(date +%m)/$(date +%d)-$(date +%H):$(date +%M)  Prof. Gustavo Theodoro Laskoski, D. Sc."; 
git push -f origin centrino;
