# IZA practical course 1

This is an overview of the first seminar of a course about developing apps for Apple devices.

**Key points:**
- [XCode introduction and first project creation](#xcode-introduction)
- [Canvas, Simulator, Playground and other development tools](#development-tools)
- [Introduction to SwiftUI app code structure](#swiftui-app-code-structure)
- [Built-in SwiftUI components (`Text`, `Button`, ...)](#built-in-swiftui-components)
- [Common `View` modifiers (`.background()`, `.padding()`, ...)](#view-modifiers)
- [Stacks and layout](#stacks-and-layout)
- [Creating custom `View`](#creating-custom-view)

## XCode introduction

tbd.

## Development tools

tbd.

- What is Canvas and where to find it
- What is Simulator and how to test on simulated devices
- What is Playground and how to use it
- What is SF Symbols app for

## SwiftUI app code structure

tbd.

- Show entry point to the program
- Show `ContentView`

## Built-in SwiftUI components

SwiftUI comes with a list of built-in components (Views), using which you can build your whole app. The list contains implementation of mostly used UI components an their adaptations for both mobile and computer platforms. You can find a swift introduction to built-in UI components [in this file](src/01_BuiltInSwiftUIViews.swift).

When learning about built-in Views, try to focus on cases, where we use {} brackets. This way, you are passing implementation of a function, which the specific View can call. For example in the `Button` View, you are passing a function, that builds the contents of the button. 

You can find more about `View` and all the built-in components in the [official documentation](https://developer.apple.com/documentation/swiftui/view).

## View modifiers

SwiftUI allows you to customize your Views using so called "View Modifiers". You can think of it as functions, that takes your View, modifies it, and returns the modified version of it. There are common modifiers (like `frame` or `padding`) that you can use to alter the appearence of any View, but you can find also modifiers that are tied to a specific Views (like `font` that works on `Text` related Views). You can use as many of them on a single View as you want, but keep in mind that the order of applying different modifyers matters. You can see a brief introduction in [this file](src/02_Modifiers.swift).

If you want to learn more about modifiers, you can always check the available ones for each View in the official Apple documentation. For example, you can find all kinds of font related ones in the [`Text` View documentation page](https://developer.apple.com/documentation/swiftui/text).

## Stacks and layout

Stacks are the main way to control where are individual components (Views) placed on the screen. It also allows you to automatically scale the layout when switching between portrait and landscape mode. There are currently three stacks, the `HStack`, `VStack` and the `ZStack`. Stacks are wrapping Views that do the magic for you. The logic behind each of them is following:

- `HStack` - allows you to place Views next to each other horizontally.
- `VStack` - places the Views one after another vertically.
- `ZStack` - can be used for managing placing Views on top of each other in z-axis (some advanced overlays, ...).

You can find more about how to use them in [this file](src/03_Stacks.swift).

## Creating custom View

You can build your own UI components by implementing the View protocol. Actuallly, if you went through the materials of previous chapters, we already implemented it several times. You might find this pattern familiar:

```swift
struct MyView: View {
    var body: some View {
        ...
        // Your content here
        ...
    }
}
```

It is all you need to implement your custom UI component. You just need to fill the implementation in the `body` and you are ready to go. You can find a brief demonstration in [this directory](demo_01/src/04_CustomSwiftUIView/). To follow a clean code standards, the implementation is divided into separate files by individual View implementations. You can start by looking at [this file](demo_01/src/04_CustomSwiftUIView/ContentView.swift).

