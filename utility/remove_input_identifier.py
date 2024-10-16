import re
import sys

def replace_input_keyword(input_file_path, output_file_path):
    # Regular expression to match the keyword "input" as an isolated identifier
    pattern = r'\binput\b(?=\s*[^a-zA-Z0-9_])'

    # Read the content of the input file
    with open(input_file_path, 'r') as file:
        content = file.read()

    # Replace all instances of "input" with "ipt"
    updated_content = re.sub(pattern, 'ipt', content)

    # Write the updated content to the output file
    with open(output_file_path, 'w') as file:
        file.write(updated_content)

    print(f'Updated all instances of "input" from {input_file_path} and saved to {output_file_path}')

# Main block to accept command-line arguments
if __name__ == "__main__":
    # Check if there are exactly two arguments provided (excluding the script name)
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file> <output_file>")
    else:
        # Get the input and output file paths from command-line arguments
        input_file = sys.argv[1]
        output_file = sys.argv[2]

        # Run the replacement function
        replace_input_keyword(input_file, output_file)
