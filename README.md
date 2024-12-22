# GitHashingExercise

This project takes a four-digit number as an input and generates a hash output. Specifically, i have chosen the SHA-256 hashing
algorithm.

As regards the hash_script.sh, you first have to add execute permissions and then the script can be invoked like this: 
```bash
./hash_script.sh "your 4-digit number"
```
since the input is taken from the user via the keyboard. Also, "your 4-digit number" can be any number or the last four digits of your AEM.

In the script it self, first we pass the input form the keyboard as $argument1:
```bash
# Assign argument to variable
aem="$1"
```
Then the hash output is generated using SHA-256:

```bash
  hash_output=$(echo -n "$1" | sha256sum | awk '{print $1}')
```
it is then printed in the screen and lastly overwritten in the hash_output.txt:

```bash
echo "Hash output: $hash_output"

echo "Hash output: $hash_output" > "hash_output.txt"
```
