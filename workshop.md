# Flutter architectural overview

1. The layer model: The pieces from which Flutter is constructed.
2. Reactive user interfaces: A core concept for Flutter user interface development.
3. An introduction to widgets: The fundamental building blocks of Flutter user interfaces.
4. The rendering process: How Flutter turns UI code into pixels.
5. An overview of the platform embedders: The code that lets mobile and desktop OSes execute Flutter apps.
6. Integrating Flutter with other code: Information about different techniques available to Flutter apps.
7. Support for the web: Concluding remarks about the characteristics of Flutter in a browser environment.

## Architectural layers
![alt text](/docs/archdiagram.png)

Source: 
- https://docs.flutter.dev/resources/architectural-overview
- https://docs.flutter.dev/app-architecture

## App Lifecycle States

1. resumed (visible and interactive): The app has returned to the foreground and is ready to interact with the user. It transitions from the paused or inactive state.
2. inactive (transitioning, e. g. call): The app is in an inactive state, typically transitioning between foreground and background. User interactions are not processed during this state.
3. hidden: The app is in a hidden state, indicating that it is not visible to the user. This state often occurs when the app is minimized or covered by another application.
4. paused (running in background): The app is paused and not executing code. This state occurs when the app is in the background and not visible to the user.
5. detached (runs with no UI, rare case): The app is completely detached from the framework, indicating that it is about to be terminated.

Flutter does not guarantee that Timer, Stream or even Bloc logic will keep working in the background, it depends on OS

Flutter Beginner Course: https://www.youtube.com/watch?v=HQ_ytw58tC4

---

### The Foundation: Dart and Widgets

* **Dart:** modern, object-oriented language, it's class-based, strongly typed, and includes features like null safety. Dart is optimized for building UIs and is the sole language for Flutter development.
* **Widgets:** In Flutter, **everything is a widget**. A widget is an immutable description of a part of your user interface. Whether it's a button, a layout container, or even the entire screen, it's all a widget. Widgets are combined to form a **widget tree**, which the framework uses to render your UI.

---

### The Core Concepts: Stateless vs. Stateful Widgets

This is one of the most fundamental distinctions in Flutter.

* **StatelessWidget:** A `StatelessWidget` is a widget that does not have any mutable state. Its configuration is set when it's created and it never changes. Think of it as a function that returns a UI based on its input parameters (its constructor arguments). If you want to change its appearance, you must replace the entire widget with a new one. Examples include `Text`, `Icon`, and `Padding`.

* **StatefulWidget:** A `StatefulWidget` is a widget that can change its appearance in response to user interaction or data changes. It's composed of two parts:
    1.  The `StatefulWidget` itself, which is immutable.
    2.  The `State` object, which holds the mutable state and can be rebuilt when the state changes.
        The `State` object has a `setState()` method. Calling `setState()` notifies the framework that the internal state has changed and triggers a rebuild of the widget tree, reflecting the new state. Examples include `Checkbox`, `Radio`, and a custom widget that displays a counter.

---

### Object-Oriented Principles: Inheritance, Interfaces, and Mixins

Dart, and by extension Flutter, relies heavily on object-oriented programming.

* **Inheritance (`extends`):** This is the classic "is-a" relationship. A class can inherit properties and methods from a parent class. For example, a `Dog` class could `extend` an `Animal` class. You use `extends` to build upon an existing implementation. In Flutter, you'll most commonly see this when extending `StatelessWidget` or `StatefulWidget`.

* **Interfaces (`implements`):** In Dart, every class implicitly defines an interface. To implement a class's interface, you use the `implements` keyword. This means you must provide your own implementation for all of the interface's methods. This is useful for adhering to a specific contract without inheriting the implementation.

* **Mixins (`with`):** A mixin provides a way to reuse a class's code across multiple class hierarchies without inheritance. You can think of it as "injecting" a set of methods and properties into a class. Mixins are a powerful tool for code reuse and are often preferred over deep inheritance hierarchies.

---

### State Management: Choosing an Architecture

For any app beyond the simplest "Hello World," you'll need a way to manage the state of your application. This is a crucial decision, and the community has developed several popular solutions.

| Solution | Best for... | Pros | Cons |
| :--- | :--- | :--- | :--- |
| **Provider** | **Beginners and small-to-medium apps.** It's often the first state management solution developers learn. | Simple, lightweight, and easy to get started. Low boilerplate. Good community documentation. | Can become cumbersome and difficult to scale in large applications. Relies on the widget tree (`BuildContext`), which can be a limitation. |
| **Riverpod** | **Medium-to-large apps.** It's a modern, type-safe evolution of Provider from the same author. | Compile-time safety (catches errors early). Does not rely on the widget tree. More testable. Highly flexible and powerful. | Slightly steeper learning curve than Provider. More concepts to grasp initially. |
| **BLoC** | **Large, enterprise-grade apps.** It stands for Business Logic Component and enforces a strict separation of concerns. | Excellent for scalability and testability. Predictable and maintainable architecture. Strong tooling and community support. | Steep learning curve, especially for developers new to reactive programming and streams. Can be boilerplate-heavy. Overkill for small apps. |