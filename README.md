# Understanding OOP in PHP

## Goal of Object-Oriented Programming (OOP)

### Definition:
Modeling real-world entities using objects in programming.

### Benefits:
- **Reusability**: Write once, reuse multiple times.
- **Scalability**: Easily adapt to growing requirements.
- **Maintainability**: Simplifies debugging and updates.

---

## Core OOP Concepts

1. **Encapsulation**
   - Restrict access to certain components of an object.
   - Use access modifiers (public, private, protected) to control visibility.

2. **Abstraction**
   - Focus on essential features, hiding unnecessary details.
   - Achieved using abstract classes and interfaces.

3. **Inheritance**
   - Allow child classes to inherit properties and methods from a parent class.

4. **Polymorphism**
   - Objects can take many forms, achieved through method overriding and interfaces.

---

## Classes and Objects

### Defining a Class and Creating an Object:
```php
class Car {
    public $brand;

    public function drive() {
        echo "Driving a {$this->brand}!";
    }
}

$car = new Car();
$car->brand = "Toyota";
$car->drive();
```

---

### 3.1 Properties and Methods
- **Properties**: Attributes that define an object’s state.
- **Methods**: Functions that define an object’s behavior.

#### Example:
```php
class Person {
    public $name;

    public function sayHello() {
        echo "Hello, my name is {$this->name}.";
    }
}

$person = new Person();
$person->name = "Rayan";
$person->sayHello();
```

---

### 3.2 Constructors and Destructors

#### Constructor:
Automatically initializes an object when created.
```php
class User {
    public $username;

    public function __construct($username) {
        $this->username = $username;
    }
}

$user = new User("Rayan");
echo $user->username; 
```

#### Destructor:
Cleans up resources when an object is no longer needed.
```php
class FileHandler {
    public function __destruct() {
        echo "File closed.";
    }
}
$file = new FileHandler();
```

---

### 3.3 Access Modifiers
- **Public**: Accessible from anywhere.
- **Private**: Accessible only within the class.
- **Protected**: Accessible within the class and its children.

#### Example of Encapsulation:
```php
class BankAccount {
    private $balance = 0;

    public function deposit($amount) {
        $this->balance += $amount;
    }

    public function getBalance() {
        return $this->balance;
    }
}

$account = new BankAccount();
$account->deposit(100);
echo $account->getBalance();
```

---

## Inheritance

### Parent and Child Classes:
```php
class Animal {
    public function speak() {
        echo "Animal sound.";
    }
}

class Dog extends Animal {
    public function speak() {
        echo "Bark!";
    }
}

$dog = new Dog();
$dog->speak(); 
```

---

## Abstract Classes

### Creating Templates for Other Classes:
```php
abstract class Shape {
    abstract public function calculateArea();
}

class Circle extends Shape {
    public function calculateArea() {
        return "Area of the circle.";
    }
}

$circle = new Circle();
echo $circle->calculateArea();
```

---

## Interfaces

### Defining a Contract for Classes:
```php
interface Logger {
    public function log($message);
}

class FileLogger implements Logger {
    public function log($message) {
        echo "Logging to a file: $message";
    }
}

$logger = new FileLogger();
$logger->log("System started.");
```

---

## Static Methods and Properties

### Shared Properties and Utility Methods:
```php
class MathHelper {
    public static $pi = 3.14;

    public static function square($number) {
        return $number * $number;
    }
}

echo MathHelper::$pi;
echo MathHelper::square(5);
```

---

## Namespaces and Autoloading

### Organizing Code with Namespaces:
```php
namespace MyApp;

class User {
    public function greet() {
        echo "Hello from MyApp namespace.";
    }
}
```

### Using Composer’s Autoload:
1. Define your namespace in `composer.json`:
```json
{
    "autoload": {
        "psr-4": {
            "MyApp\\": "src/"
        }
    }
}
```
2. Run:
```bash
composer dump-autoload
```
3. Use the class:
```php
require 'vendor/autoload.php';

use MyApp\User;

$user = new User();
$user->greet();
```

