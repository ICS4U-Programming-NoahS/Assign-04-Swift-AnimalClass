//
// Main.swift
//
// Created by Noah Smith
// Created on 2025-05-25
// Version 1.0
// Copyright (c) 2025 Noah Smith. All rights reserved.
//
// The animal program has an animal superclass and animal subclasses.
// It creates instances of each animal subclass and calls their methods.
// The program will:
// Create instances of Lion, Elephant, Pig, and Penguin.
// Call the info, sleep, sound, and eat methods for each animal.
// Display the competition results based on a random number.
// Call the sleep method for each animal again.
// Display a conclusion message.

// Import foundation library
import Foundation

// Generate random ages between 1 and 20
let lionAge = Int.random(in: 1...20)
let elephantAge = Int.random(in: 1...20)
let penguinAge = Int.random(in: 1...20)
let pigAge = Int.random(in: 1...20)

// Create an array of Animals
let animals: [Animal] = [
    Lion(age: lionAge),
    Elephant(age: elephantAge),
    Penguin(age: penguinAge),
    Pig(age: pigAge)
]

// Display welcome message
print("Welcome to the Animal Kingdom!")
print("Competition day is today, so the animals are getting ready:\n")

// Call methods for each animal,
// with a pause in between each method call,
// Using a for each loop to go through the animals array
for animal in animals {
    animal.info()
    animal.pause()
    animal.sleep()
    animal.pause()
    animal.eat()
    animal.pause()
    print()
}

// Call the competition method
Animal.competition()

// Call sleep method for each animal, with a pause in between
for animal in animals {
    animal.pause()
    animal.sleep()
}

// Conclusion message
print("\nAll animals are asleep after a long day of competition.")

// This is the Animal superclass
class Animal {

    // Define properties of the animals in the animal class
    private let age: Int
    private let species: String
    private let carnivore: Bool
    private let herbivore: Bool

    // Constructor for the Animal class
    init(age: Int, species: String, carnivore: Bool, herbivore: Bool) {
        self.age = age
        self.species = species
        self.carnivore = carnivore
        self.herbivore = herbivore
    }

    // Pause method (wait 3 seconds)
    func pause() {
        Thread.sleep(forTimeInterval: 3.0)
    }

    // Eat method
    func eat() {
        print("The \(species) is eating.")
    }

    // Sleep method
    func sleep() {
        print("The \(species) is sleeping.")
    }

    // Info method
    func info() {

        // Display the species and age of the animal
        print("Species: \(species)")
        print("Age: \(age)")

        // Determine if the animal is a carnivore, herbivore, or omnivore
        if carnivore {
            print("The \(species) is a carnivore.")
        } else if herbivore {
            print("The \(species) is an herbivore.")
        } else {
            print("The \(species) is an omnivore.")
        }
    }

    // Competition method
    static func competition() {
        // Generate a random number between 0 and 4 inclusive
        // to determine the competition type
        let randomNumber = Int.random(in: 0..<5)

        // Use a switch statement to determine the competition result
        switch randomNumber {
        case 1:
            print("It is a running race, the lion wins!")
        case 2:
            print("Swimming competition, the penguin wins!")
        case 3:
            print("Lifting competition, the elephant wins!")
        case 4:
            print("Eating competition, the pig wins!")
        default:
            print("There was a storm, no competition today.")
        }

        // New line for better readability
        print()
    }
}

// The Elephant subclass inherits from Animal superclass
final class Elephant: Animal {

    // Constructor for the Elephant class
    init(age: Int) {
        super.init(age: age, species: "elephant", carnivore: false, herbivore: true)
    }
}

// The Lion subclass inherits from Animal superclass
final class Lion: Animal {

    // Constructor for the Lion class
    init(age: Int) {
        super.init(age: age, species: "lion", carnivore: true, herbivore: false)
    }
}

// The Penguin subclass inherits from Animal superclass
final class Penguin: Animal {

    // Constructor for the Penguin class
    init(age: Int) {
        super.init(age: age, species: "penguin", carnivore: true, herbivore: false)
    }
}

// The Pig subclass inherits from Animal superclass
final class Pig: Animal {

    // Constructor for the Pig class
    init(age: Int) {
        super.init(age: age, species: "pig", carnivore: false, herbivore: false)
    }
}
