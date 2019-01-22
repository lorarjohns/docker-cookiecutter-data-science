#! /bin/bash
curl -u {{ cookiecutter.circleCI_API_key }}: -X POST https://circleci.com/api/v1.1/project/github/{{ cookiecutter.repo_owner }}/{{ cookiecutter.repo_name }}/follow
rm -- "$0"
