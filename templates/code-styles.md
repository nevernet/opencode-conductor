# Code Styles: {Project Name}

## Overview
定义项目的代码风格规范，确保代码一致性和可维护性。

## Linting & Formatting

### TypeScript/JavaScript
- **Linter**: ESLint
- **Formatter**: Prettier
- **Config**: `.eslintrc.json`, `.prettierrc`

### Go
- **Formatter**: gofmt
- **Linter**: golint, staticcheck
- **Config**: `.golangci.yml`

### PHP
- **PSR Standards**: PSR-12
- **Formatter**: PHP-CS-Fixer
- **Linter**: PHPStan

### Python
- **Formatter**: Black
- **Linter**: flake8, pylint
- **Type Checker**: mypy

## Naming Conventions

### TypeScript
- 变量/函数: `camelCase`
- 类/接口/类型: `PascalCase`
- 常量: `UPPER_SNAKE_CASE`
- 文件: `kebab-case.ts`

### Go
- 变量/函数: `camelCase` (小写开头)
- 导出函数/类型: `PascalCase` (大写开头)
- 常量: `PascalCase` 或 `UPPER_SNAKE_CASE`
- 文件: `snake_case.go`

### PHP
- 类: `PascalCase`
- 方法/变量: `camelCase`
- 常量: `UPPER_SNAKE_CASE`
- 文件: `PascalCase.php`

## Language-Specific Best Practices

### TypeScript
- 优先使用 `interface` over `type`
- 启用 `strict` 模式
- 使用 `async/await` 避免回调地狱

### Go
- 错误处理：不要忽略 `error`
- 使用 `context` 传递请求级数据
- 避免全局状态

### PHP
- 使用 Laravel 命名空间约定
- 优先使用依赖注入
- 避免使用裸 SQL，使用 ORM

## Anti-Patterns (禁止)

### 通用
- ❌ 使用 `as any`, `@ts-ignore` 类型压制
- ❌ 留空 catch 块 `catch(e) {}`
- ❌ 提交自动生成的代码 (apis/, models/)

### TypeScript
- ❌ 使用 `var`
- ❌ 使用 `any` 类型
- ❌ 忽略 async 函数返回值

### Go
- ❌ 忽略 error 返回值
- ❌ 使用 panic 处理正常错误
- ❌ 全局变量滥用

### PHP
- ❌ 裸 SQL 拼接
- ❌ 使用 eval()
- ❌ 忽略异常处理
