#!/usr/bin/env bash
curl -vv \
    -H "Authorization: token ${GITHUB_TOKEN}" \
    -H "Accept: application/vnd.github.everest-preview+json" \
    "https://api.github.com/repos/azu/hubmemo/dispatches" \
    -d '{"event_type": "update-memo", "client_payload": {"title":"example","url":"https://example.com","content":"description for example","tags":["example"]}}'
