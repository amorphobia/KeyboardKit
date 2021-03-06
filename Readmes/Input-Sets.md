# Input Sets

KeyboardKit has a `KeyboardInputSet` struct, which represents rows of input characters.

An input set is divided into three sub-groups:

* `AlphabeticKeyboardInputSet` for alphabetic keyboards.
* `NumericKeyboardInputSet` for numeric keyboards.
* `SymbolicKeyboardInputSet` for symbolic keyboards.


## Input set vs. keyboard layout

A *keyboard input set* is the characters that make up the input part of a keyboard.

A *keyboard layout* is the actions that make up the complete keyboard, together with layout-specific information.


## Input set providers

KeyboardKit has a `KeyboardInputSetProvider` protocol that can be used to provide input sets to the extension. Using an input set provider instead of creating input sets manually gives you a very flexible way of working with inputs.

`KeyboardInputViewController` will automatically create a standard `keyboardInputSetProvider` when the extension is started. You can use this provider as is or replace it with a custom one.


## Supporting more locales

The `StandardKeyboardInputSetProvider` is initialized with a list of locale-specific providers that are included in this library. 

At the time of writing, this gives you support for `English`,  `German` `Italian` and `Swedish` out of the box.

You can inject any provider that implements `KeyboardInputSetProvider` and `LocalizedService` into the standard provider, so it's easy to add your own locales to the existing solution.  

I will gladly accept any PRs that add more locale-specific providers to this library. 👍


## Optional

It's woth mentioning that the concept of input sets is just a convenience. KeyboardKit doesn't force you to use input sets. Your keyboard extensions can look and behave however you want.
