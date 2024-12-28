struct AnyStruct {
    a: u256,
    b: u32,
}

enum AnyEnum {
    A: felt252,
    B: (usize, u256),
}

// Constants
const ONE_HOUR_IN_SECONDS: u32 = 3600;
const STRUCT_INSTANCE: AnyStruct = AnyStruct { a: 0, b: 1 };
const ENUM_INSTANCE: AnyEnum = AnyEnum::A('any enum');
const BOOL_FIXED_SIZE_ARRAY: [bool; 2] = [true, false];

fn main() {
    // Mutability
    let mut x = 5;
    println!("The value of x is: {}", x);
    x = 6;
    println!("The value of x is: {}", x);

    // Shadowing
    let y = 5;
    let y = y + 1;
    {
        let y = y * 2;
        println!("Inner scope value is: {}", y);
    }
    println!("Outer scope value is: {}", y);

    // Type conversion between the u64 and felt252 types
    let z: u64 = 2;
    println!("The value of z is {} of type u64", z);
    let z: felt252 = z.into(); // converts z to a felt, type annotation is required.
    println!("The value of z is {} of type felt252", z);
}
