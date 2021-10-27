# handson

A hands-on introduction to Flutter development

## Getting Started

Try the following:

### 1. Add flutter_bloc

Add the flutter_bloc state management package to your pubspec (https://pub.dev/packages/flutter_bloc) and run `pub get` or click 'update packages' in the IDE.

### 2. Create a TasksCubit

Open tasks_cubit.dart and have `TasksCubit` extend from `Cubit<List<String>>`. The `add` and `remove` methods can now emit a new state after the list modification.

To allow other widgets to use this cubit, open main.dart and wrap the `MaterialApp` in a `BlocProvider`.

### 3. List tasks in TasksScreen

Open tasks_screen.dart and replace the existing empty `Container()` widget with a ListView (https://api.flutter.dev/flutter/widgets/ListView-class.html). 

The tasks list can be obtained from the `BlocBuilder`'s `state` (https://pub.dev/packages/flutter_bloc#counter_pagedart).

The `ListView` children can be simple `Text` widgets or use `ListTile` for more options.

### 4. List modification

Allow adding of tasks by extending the screen layout to show a `TextFormField` (https://api.flutter.dev/flutter/material/TextFormField-class.html). The `TextFormField`'s `onFieldSubmitted` event can be used to ask the cubit to create a new task.

```dart
    TextFormField(
      onFieldSubmitted: (text) {
        context.read<TasksCubit>().add(text);
      },
    );
```

Allow removing tasks by use `ListTile`s as your ListView's children and set up a trailing `Icon(Icons.delete)` which calls into the `TasksCubit`.
## Troubleshooting

> `Cubit` can not be found.

Make sure you have the flutter_bloc package added in your pubspec.yaml under `dependencies:` (not `dev_dependencies:`) and have run `pub get`.

> The method 'read' isn't defined for the type 'BuildContext'.

Try importing the provider package:
```dart
import 'package:provider/provider.dart';
```

> The list does not update, even when I emit new states

Make sure the newly emitted list is a new `List` instance and not just a modification of the current `state`. Lists in Dart are not compared on its contents (deep equality).
