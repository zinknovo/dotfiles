# PRD Generator

Guide users to clarify requirements and produce a complete PRD (Product Requirement Document) in Markdown. Use when users ask for PRD creation, requirement整理/梳理, or step-by-step需求文档引导 in Chinese or English.

## Workflow

1. Confirm language preference.
- Ask: "输出语言偏好？" Provide options: `中文` / `English` / `中英双语`.
- If bilingual, mirror section titles in both languages.

2. Collect information using "提问 + 填空".
- Ask each section in order. Use short, concrete questions.
- Present a fill-in line for each field like: `字段：____`.
- If user already provided info, confirm and move on.
- If missing, mark `TBD` and continue rather than blocking.

Sections to ask:
- 功能简介（一句话）
- 主要用户和使用场景
- 输入数据格式
- 输出内容要求
- 功能流程（用户动作与系统响应）
- 异常处理
- 验收标准
- AI Prompt 模板（如需）

3. Generate final PRD in Markdown using the template below.
- Keep bullets flat; no nested lists.
- Be specific and testable in "验收标准".
- Ensure consistent tense and terms.

4. Offer iteration.
- Ask if they want to revise any section or add constraints.

## Question Style

- Keep each step short and focused.
- Provide examples only if the user seems stuck.
- Prefer 1-3 questions per section.

## Output Requirements

- Always produce a final Markdown PRD.
- If user wants only a summary, still include all sections with `TBD` where needed.
- When bilingual, use format: `标题 Title`.

## Prompt Template Requirement

If user requests AI participation, include a prompt template section with placeholders:
- `目标` / `Goal`
- `用户与场景` / `Users & Scenarios`
- `输入` / `Inputs`
- `输出` / `Outputs`
- `约束` / `Constraints`
- `期望格式` / `Expected Format`

## PRD Template

```markdown
# PRD / 需求文档

## 1. 功能简介 / Summary
- 一句话描述：

## 2. 主要用户和使用场景 / Users & Scenarios
- 主要用户：
- 使用场景：

## 3. 输入数据格式 / Inputs
- 输入类型：
- 示例或约束：

## 4. 输出内容要求 / Outputs
- 输出类型：
- 语言与格式：
- 展示方式：

## 5. 功能流程 / User Flow
- 用户从哪开始：
- 系统做了什么：
- 用户看到什么：

## 6. 异常处理 / Error Handling
- 无效输入：
- 系统错误：

## 7. 验收标准 / Acceptance Criteria
-

## 8. AI Prompt 模板 / AI Prompt Template
目标/Goal:
用户与场景/Users & Scenarios:
输入/Inputs:
输出/Outputs:
约束/Constraints:
期望格式/Expected Format:
```
