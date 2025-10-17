---
allowed-tools: Bash(gh pr comment:*),Bash(gh pr diff:*),Bash(gh pr view:*),mcp__github_inline_comment__create_inline_comment
description: Review a code contribution pull request
---


Put one inline comment in 195 line of file src/components/MoneyRequestReportView/MoneyRequestReportTransactionList.tsx. 
The body of comment is descirebed in <comment>/<comment> 

<comment>
# This works

__and this__

`const a = 'lala'`

```ts
const tmp = 123;
```

</comment>

First try to use mcp tool to add comment. 

To use gh api use exactly the command below and fill <number of the PR>
to fill <body> use the text in <comment></comment>

{
  "command": "gh api repos/adamgrzybowski/expensify-ai-test/pulls/<number of the PR>/comments -f body=<body> -f path=\"src/components/MoneyRequestReportView/MoneyRequestReportTransactionList.tsx\" -f commit_id=\"e6bc91f43532e11a93194db7f1966a82681c7931\" -F line=195 --method POST",
  "description": "Add inline comment to PR"
}


If something requires approval, explain it to me how to give approval

List all available MCP tools