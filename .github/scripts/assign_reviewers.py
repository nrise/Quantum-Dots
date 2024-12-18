import os
import random
import requests
import json

repo_name = os.getenv('GITHUB_REPOSITORY')
event_path = os.getenv('GITHUB_EVENT_PATH')
token = os.getenv('GITHUB_TOKEN')

with open(event_path) as event_file:
    event_data = json.load(event_file)
pr_number = event_data["pull_request"]["number"]

author = event_data["pull_request"]["user"]["login"]

owner, repo = repo_name.split('/')


def assign_reviewers(pr_number, reviewers):
    url = f"https://api.github.com/repos/{owner}/{repo}/pulls/{pr_number}/requested_reviewers"
    headers = {
        "Authorization": f"token {token}",
        "Accept": "application/vnd.github.v3+json"
    }
    data = {"reviewers": reviewers}
    response = requests.post(url, headers=headers, json=data)
    if response.status_code == 201:
        print("Reviewers assigned successfully.")
    else:
        print(f"Failed to assign reviewers. Status code: {response.status_code}")

fixed_reviewers = ['jinusong', 'myeonginwoo']
assign_reviewers(pr_number, fixed_reviewers)
