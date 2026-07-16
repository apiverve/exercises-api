# Exercises API - PHP Package

Exercises is a simple tool for getting exercise information. It returns information on various exercises.

## Installation

Install via Composer:

```bash
composer require apiverve/exercises
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Exercises\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'muscle' => 'chest',
    'name' => 'barbell',
    'equipment' => 'barbell'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Exercises\Client;
use APIVerve\Exercises\Exceptions\APIException;
use APIVerve\Exercises\Exceptions\ValidationException;

try {
    $response = $client->execute(['muscle' => 'chest', 'name' => 'barbell', 'equipment' => 'barbell']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/exercises?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/exercises?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/exercises?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
