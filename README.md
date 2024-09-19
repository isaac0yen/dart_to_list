
# Todo List Application

This is a simple command-line todo list application written in Dart simply for learning purposes.

## Features

- List todo items
- Add new todo items

## Project Structure


```
.
├── bin/
│   └── todo_list.dart
├── lib/
│   └── todo_list.dart
├── temp/
│   └── list.txt
├── test/
│   └── todo_list_test.dart
├── .gitignore
├── analysis_options.yaml
└── README.md
```


## Getting Started

1. Ensure you have Dart SDK installed on your system.
2. Clone this repository.
3. Run `dart pub get` to fetch dependencies.

## Usage

Run the application using the following command:


```
dart run
```


Follow the on-screen prompts to interact with the todo list:

- Enter 'l' to list todo items
- Enter 'a' to add a new todo item
- Enter 'exit' to exit the application

## File Descriptions

- `bin/todo_list.dart`: Contains the main application logic and user interface.
- `lib/todo_list.dart`: Implements core functionality for reading and writing todo items.
- `temp/list.txt`: Stores the todo items.
- `test/todo_list_test.dart`: Contains unit tests for the application.
- `.gitignore`: Specifies intentionally untracked files to ignore.
- `analysis_options.yaml`: Configures static analysis options for the project.

## Testing

Run the tests using the following command:

```
dart test
```


## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is open source and available under the [MIT License](LICENSE).
