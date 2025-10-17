---
allowed-tools: Bash(gh pr comment:*),Bash(gh pr diff:*),Bash(gh pr view:*),mcp__github_inline_comment__create_inline_comment
description: Review a code contribution pull request
---


Put one inline comment in 195 line of file src/components/MoneyRequestReportView/MoneyRequestReportTransactionList.tsx. 

To post comment use the command shown in the example below
./ghApiComment.sh --pr 123 --sha COMMIT_SHA --path src/file.ts --position 17 --body "Message"

body of the comment is 

<body>

lalalal # alalalal

```js 
const bb = 1;
const a = `raz dwa ${bb}`;
```
</body>

