# [Exercises API](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Exercises filters movements by target muscle group, equipment, and exercise name, returning matching exercises with their force type and required gear. Paid plans add step-by-step instructions, difficulty levels, and movement mechanics.

The Exercises API provides a simple, reliable way to integrate exercises functionality into your applications. Built for developers who need production-ready exercises capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
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

- 🏠 **API Home:** [Exercises API](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
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

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Exercises API:

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 5,
    "filteredOn": [
      "name",
      "muscle"
    ],
    "exercises": [
      {
        "name": "Barbell Ab Rollout",
        "force": "pull",
        "level": "intermediate",
        "mechanic": "compound",
        "equipment": "barbell",
        "instructions": [
          "For this exercise you will need to get into a pushup position, but instead of having your hands of the floor, you will be grabbing on to an Olympic barbell (loaded with 5-10 lbs on each side) instead. This will be your starting position.",
          "While keeping a slight arch on your back, lift your hips and roll the barbell towards your feet as you exhale. Tip: As you perform the movement, your glutes should be coming up, you should be keeping the abs tight and should maintain your back posture at all times. Also your arms should be staying perpendicular to the floor throughout the movement. If you don't, you will work out your shoulders and back more than the abs.",
          "After a second contraction at the top, start to roll the barbell back forward to the starting position slowly as you inhale.",
          "Repeat for the recommended amount of repetitions."
        ],
        "muscle": "biceps"
      },
      {
        "name": "Barbell Ab Rollout - On Knees",
        "force": "pull",
        "level": "expert",
        "mechanic": "compound",
        "equipment": "barbell",
        "instructions": [
          "Hold an Olympic barbell loaded with 5-10lbs on each side and kneel on the floor.",
          "Now place the barbell on the floor in front of you so that you are on all your hands and knees (as in a kneeling push up position). This will be your starting position.",
          "Slowly roll the barbell straight forward, stretching your body into a straight position. Tip: Go down as far as you can without touching the floor with your body. Breathe in during this portion of the movement.",
          "After a second pause at the stretched position, start pulling yourself back to the starting position as you breathe out. Tip: Go slowly and keep your abs tight at all times."
        ],
        "muscle": "biceps"
      },
      {
        "name": "Barbell Bench Press - Medium Grip",
        "force": "push",
        "level": "beginner",
        "mechanic": "compound",
        "equipment": "barbell",
        "instructions": [
          "Lie back on a flat bench. Using a medium width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.",
          "From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.",
          "After a brief pause, push the bar back to the starting position as you breathe out. Focus on pushing the bar using your chest muscles. Lock your arms and squeeze your chest in the contracted position at the top of the motion, hold for a second and then start coming down slowly again. Tip: Ideally, lowering the weight should take about twice as long as raising it.",
          "Repeat the movement for the prescribed amount of repetitions.",
          "When you are done, place the bar back in the rack."
        ],
        "muscle": "biceps"
      },
      {
        "name": "Barbell Curl",
        "force": "pull",
        "level": "beginner",
        "mechanic": "isolation",
        "equipment": "barbell",
        "instructions": [
          "Stand up with your torso upright while holding a barbell at a shoulder-width grip. The palm of your hands should be facing forward and the elbows should be close to the torso. This will be your starting position.",
          "While holding the upper arms stationary, curl the weights forward while contracting the biceps as you breathe out. Tip: Only the forearms should move.",
          "Continue the movement until your biceps are fully contracted and the bar is at shoulder level. Hold the contracted position for a second and squeeze the biceps hard.",
          "Slowly begin to bring the bar back to starting position as your breathe in.",
          "Repeat for the recommended amount of repetitions."
        ],
        "muscle": "biceps"
      },
      {
        "name": "Barbell Curls Lying Against An Incline",
        "force": "pull",
        "level": "beginner",
        "mechanic": "isolation",
        "equipment": "barbell",
        "instructions": [
          "Lie against an incline bench, with your arms holding a barbell and hanging down in a horizontal line. This will be your starting position.",
          "While keeping the upper arms stationary, curl the weight up as high as you can while squeezing the biceps. Breathe out as you perform this portion of the movement. Tip: Only the forearms should move. Do not swing the arms.",
          "After a second contraction, slowly go back to the starting position as you inhale. Tip: Make sure that you go all of the way down.",
          "Repeat for the recommended amount of repetitions."
        ],
        "muscle": "biceps"
      }
    ]
  }
}
```

---

## Support & Community

- 🏠 **API Home**: [Exercises API](https://apiverve.com/marketplace/exercises?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
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
