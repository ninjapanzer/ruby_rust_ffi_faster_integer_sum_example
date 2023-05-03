fn main() {
    let max_int: i32 = 2147483647;
    let mut sum: i64 = 0;

    for i in 1..=max_int {
        sum += i as i64;
    }

    println!("The sum of all integers up to {} is {}", max_int, sum);
}
