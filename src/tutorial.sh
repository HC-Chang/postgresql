#!/bin/bash

table=students

function drop_db (){
	psql -U postgres -c "DROP TABLE $table;"
}

function create_db(){
	psql -U postgres -f create-table-student.txt
}	

function read_db(){
	psql -U postgres -c "SELECT * FROM $table;"
}

function update_db(){
	psql -U postgres -c "UPDATE $table SET age = 21 WHERE name = 'John Doe';"
}

function delete_db(){
	psql -U postgres -c "DELETE FROM $table WHERE name = 'Jane Smith';"
}


function helper(){
	echo "helper:"
	echo -e "\t1: create table and insert vals"
	echo -e "\t2: read table"
	echo -e "\t3: update 'John Doe' val"
	echo -e "\t4: delete val 'Jane Smith'"
	
}
	
function main(){
	if [ "$1" = "" ]; then
		helper
		exit
	fi
	case "$1" in
		"0")
			drop_db
			;;
		"1")
			create_db
			;;
		"2")
			read_db
			;;
		"3")
			update_db
			;;
		"4")
			delete_db
			;;
		*)
			helper
			;;
	esac
}

main $@