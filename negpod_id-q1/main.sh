#!/bin/bash

# Function to create a student record
create_student_record() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read id
    echo "$email,$age,$id" >> Students-list_1023.txt
    echo "Student record created successfully!"
}

# Function to view all students saved in the file
view_all_students() {
    echo "List of all students:"
    cat Students-list_1023.txt
}

# Function to delete a student by student ID
delete_student() {
    echo "Enter student ID to delete:"
    read id
    sed -i "/^$id,/d" Students-list_1023.txt
    echo "Student with ID $id deleted successfully!"
}

# Function to update a student record by student ID
update_student_record() {
    echo "Enter student ID to update:"
    read id
    echo "Enter new email:"
    read new_email
    echo "Enter new age:"
    read new_age
    sed -i "s/^$id,.*/$new_email,$new_age,$id/" Students-list_1023.txt
    echo "Student record with ID $id updated successfully!"
}

# Main menu
while true; do
    echo "Main Menu"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete a student(s)"
    echo "4. Update a student record"
    echo "5. Exit"
    read choice
    case $choice in
        1) create_student_record ;;
        2) view_all_students ;;
        3) delete_student ;;
        4) update_student_record ;;
        5) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a valid option." ;;
    esac
done

