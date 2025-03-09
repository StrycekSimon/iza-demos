# IZA practical course 1

This is an overview of the first seminar of a course about developing apps for Apple devices.

**Key points:**
- [XCode introduction and first project creation](#xcode-intro)
- [Canvas, Simulator, Playground and other development tools](#dev-tools)
- [Introduction to SwiftUI app code structure](#swiftui-structure)
- [Basic SwiftUI components (`Text`, `Button`, ...)](#common-views)
- [Common `View` modifiers (`.background()`, `.padding()`, ...)](#modifiers)
- [Stacks and layouts](#stacks)
- [Creating custom `View`](#view)

## XCode introduction {#xcode-intro}

tbd.

## Development tools {#dev-tools}

tbd.

- What is Canvas and where to find it
- What is Simulator and how to test on simulated devices
- What is Playground and how to use it
- What is SF Symbols app for

## SwiftUI app code structure {#swiftui-structure}

tbd.

- Show entry point to the program
- Show `ContentView`

## Basic SwiftUI components {#common-views}

SwiftUI comes with a list of built-in components (Views), using which you can build your whole app. The list contains implementation of mostly used UI components an their adaptations for both mobile and computer platforms. You can find a swift introduction to built-in UI components [in this file](src/01_BuiltInSwiftUIViews.swift).

When learning about built-in Views, try to focus on cases, where we use {} brackets. This way, you are passing implementation of a function, which the specific View can call. For example in the `Button` View, you are passing a function, that builds the contents of the button. 

You can find more about `View` and all the built-in components in the [official documentation](https://developer.apple.com/documentation/swiftui/view).

## View modifiers {#modifiers}

SwiftUI allows you to customize your Views using so called "View Modifiers". You can think of it as functions, that takes your View, modifies it, and returns the modified version of it. There are common modifiers (like `frame` or `padding`) that you can use to alter the appearence of any View, but you can find also modifiers that are tied to a specific Views (like `font` that works on `Text` related Views). You can use as many of them on a single View as you want, but keep in mind that the order of applying different modifyers matters. You can see a brief introduction in [this file](src/02_Modifiers.swift).

If you want to learn more about modifiers, you can always check the available ones for each View in the official Apple documentation. For example, you can find all kinds of font related ones in the [`Text` View documentation page](https://developer.apple.com/documentation/swiftui/text).

## Stacks and layout {#stacks}

Stacks are the main way to control where are individual components (Views) placed on the screen. It also allows you to automatically scale the layout when switching between portrait and landscape mode. There are currently three stacks, the `HStack`, `VStack` and the `ZStack`. Stacks are wrapping Views that do the magic for you. The logic behind each of them is following:

- `HStack` - allows you to place Views next to each other horizontally.
- `VStack` - places the Views one after another vertically.
- `ZStack` - can be used for managing placing Views on top of each other in z-axis (some advanced overlays, ...).

You can find more about how to use them in [this file](src/03_Stacks.swift).

## Creating custom View {#view}

tbd.