# [Exercises API](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Exercises is a simple tool for getting exercise information. It returns information on various exercises.

The Exercises API provides a simple, reliable way to integrate exercises functionality into your applications. Built for developers who need production-ready exercises capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/exercises)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.Exercises)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-exercises/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_exercises)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/exercises)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_exercises)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callExercisesAPI() {
    try {
        const params = new URLSearchParams({
            muscle: 'chest',
            name: 'barbell',
            equipment: 'barbell'
        });

        const response = await fetch(`https://api.apiverve.com/v1/exercises?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callExercisesAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/exercises?muscle=chest&name=barbell&equipment=barbell" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/exercises
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/exercises) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.Exercises
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.Exercises) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-exercises
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-exercises/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_exercises
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_exercises) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/exercises
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/exercises) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_exercises
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_exercises) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:exercises-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/exercises-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Exercises API](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/exercises](https://docs.apiverve.com/ref/exercises)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Exercises API is commonly used for:

- **Web Applications** - Add exercises features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with exercises capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format
All responses are JSON with this structure:
```json
{
  "status": "ok",
  "data": { ... }
}
```

---

## Support & Community

- 🏠 **API Home**: [Exercises API](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
