---
name: paper-reader
description: Read research papers using a fixed Q&A framework and output structured answers.
---

# Paper Reader

Read one or more research papers using a fixed Q&A framework and output structured answers. Use when users say "read this paper", "读一下这篇论文", or ask to summarize/understand papers with background, problem, contributions, method, and experiments.

## Inputs You Can Accept

- Local files: PDF paths, markdown, plain text.
- Pasted text: abstract, sections, or full paper text.
- Links: if content cannot be fetched, ask the user to paste the relevant text.

## Default Output

- Always output a structured answer.
- If multiple papers are provided, produce one section per paper plus a short cross-paper comparison.
- Use the user language preference: `English` / `中文` / `Bilingual (English first)`.
- Default language (if not stated): `中文`.
- Default sections: include `Limitations` and `Future Work` (unless the user asks to omit).

## Workflow

1. Clarify scope (minimal questions).
- Ask for language preference if not stated.
- Ask which paper(s) and where the content is (file path or pasted text).
- Confirm whether to omit `Limitations` / `Future Work` (default: include both).

2. Extract the key content.
- Focus on: problem statement, assumptions, method details, experimental setup, baselines, metrics, datasets, ablations.
- If the paper text is partial, explicitly state which parts are missing and answer with best-effort + "TBD".

3. Produce the framework answers.
- Be concrete and cite where possible by section name (e.g., "Method", "Experiments") or quoted headings.
- Avoid hallucinating numbers. If a number is unknown, say "not provided".

4. Sanity-check.
- Verify that contributions match the method and the experiments support the claims.
- Call out gaps: missing baselines, unclear metrics, weak ablations, threats to validity.

## Framework

Answer in this order (default: include all 7 sections).

1. 研究背景 / Background
- 论文研究的背景是什么？为什么该研究是重要的？

2. 拟解决的问题 / Problem
- 论文试图解决什么问题？这个问题的难点在哪？

3. 贡献（创新点）/ Contributions
- 论文有哪些贡献？作者提出了哪些新方法、模型或理论？

4. 方法 / Method
- 论文使用什么方法或模型来解决问题？请简要描述其原理。

5. 实验 / Experiments
- 论文进行了哪些实验？实验结果如何？实验结果验证了论文的哪些观点？

6. 局限性 / Limitations
- 论文的局限性、威胁有效性(Threats to validity)是什么？

7. 未来工作 / Future Work
- 作者提出了哪些未来工作？你认为还有哪些值得继续做的方向？

## Output Template

```markdown
# Paper Reading Output

## Paper
- Title:
- Authors:
- Year/Venue:
- Link or Source:

## 1. Background / 研究背景

## 2. Problem / 拟解决的问题

## 3. Contributions / 贡献（创新点）

## 4. Method / 方法

## 5. Experiments / 实验

## 6. Limitations / 局限性

## 7. Future Work / 未来工作

## Notes
- Assumptions:
- Key definitions:
- Threats to validity (optional):
- Open questions:

## If Multiple Papers
- Similarities:
- Differences:
- Which to use and when:
```
