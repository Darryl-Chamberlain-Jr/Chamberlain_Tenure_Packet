#!/bin/zsh
# Bash script for converting all markdown files to pdf
BASE_DIR=$(pwd)
cd $BASE_DIR
pandoc $BASE_DIR/1_Introduction/1_1_Executive_Summary/Executive Summary.md -o $BASE_DIR/1_Introduction/1_1_Executive_Summary/Executive Summary.pdf -V geometry:margin=1in
pandoc $BASE_DIR'/1_Introduction/1_2_Brief_Statement/Brief Statement.md' -o $BASE_DIR'/1_Introduction/1_2_Brief_Statement/Brief Statement.pdf' -V geometry:margin=1in
pandoc $BASE_DIR'/2_Teaching_Effectiveness/summary_teaching_effectiveness.md' -o $BASE_DIR'/2_Teaching_Effectiveness/summary_teaching_effectiveness.pdf' -V geometry:margin=1in
pandoc $BASE_DIR'/2_Teaching_Effectiveness/2b_Student_Course_Evaluations/student_course_evaluation_narrative.md' -o $BASE_DIR'/2_Teaching_Effectiveness/2b_Student_Course_Evaluations/student_course_evaluation_narrative.pdf' -V geometry:margin=1in
pandoc $BASE_DIR'/3_Scholarly_Activity/3_1_Overview/summary_scholarly_activity.md' -o $BASE_DIR'/3_Scholarly_Activity/3_1_Overview/summary_scholarly_activity.pdf' -V geometry:margin=1in
pandoc $BASE_DIR'/3_Scholarly_Activity/3_2_Record_of_Activities/record_of_activities.md' -o $BASE_DIR'/3_Scholarly_Activity/3_2_Record_of_Activities/record_of_activities.pdf' -V geometry:margin=1in
pandoc $BASE_DIR'/3_Scholarly_Activity/3_3_Research_Agenda/research_agenda.md' -o $BASE_DIR'/3_Scholarly_Activity/3_3_Research_Agenda/research_agenda.pdf' -V geometry:margin=1in
pandoc $BASE_DIR'/4_Service/4_1_Overview/summary_service.md' -o $BASE_DIR'/4_Service/4_1_Overview/summary_service.pdf' -V geometry:margin=1in
