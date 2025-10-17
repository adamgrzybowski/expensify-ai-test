---
allowed-tools: Bash(gh pr comment:*),Bash(gh pr diff:*),Bash(gh pr view:*),mcp__github_inline_comment__create_inline_comment
description: Review a code contribution pull request
---


Put one inline comment in 195 line of file src/components/MoneyRequestReportView/MoneyRequestReportTransactionList.tsx. 

use command with example below


././github/scripts/ghApiComment.sh --pr 123 --sha COMMIT_SHA --path src/file.ts --position 17

Then write the comment body directly to STDIN (no echo or redirection needed).


<body>

lalalal # alalalal

```js 
const bb = 1;
const a = `raz dwa ${bb}`;
```
</body>

