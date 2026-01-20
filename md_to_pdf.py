import os
from subprocess import call

base_dir = os.getcwd()

exc_sum_path = os.path.join(base_dir, '1_Introduction', '1_1_Executive_Summary', 'Executive Summary')
brief_state_path = os.path.join(base_dir, '1_Introduction', '1_2_Brief_Statement', 'Brief Statement')
sum_teach_state_path = os.path.join(base_dir, '2_Teaching_Effectiveness', 'summary_teaching_effectiveness')
teach_eval_narr_path = os.path.join(base_dir, '2_Teaching_Effectiveness', '2b_Student_Course_Evaluations', 'student_course_evaluation_narrative')
sum_scholar_path = os.path.join(base_dir, '3_Scholarly_Activity', '3_1_Overview', 'summary_scholarly_activity')
record_of_acts_path = os.path.join(base_dir, '3_Scholarly_Activity', '3_2_Record_of_Activities', 'record_of_activities')
research_agenda_path = os.path.join(base_dir, '3_Scholarly_Activity', '3_3_Research_Agenda', 'research_agenda')
sum_service_path = os.path.join(base_dir, '4_Service', '4_1_Overview', 'summary_service')

list_of_paths = [exc_sum_path, brief_state_path, sum_teach_state_path, teach_eval_narr_path, 
                 sum_scholar_path, record_of_acts_path, research_agenda_path, sum_service_path]

for path in list_of_paths:
    call_list = ['pandoc',
        f'{path}.md', 
        '-o',
        f'{path}.pdf',
        '-V',
        'geometry:margin=1in'
    ]
    call(call_list)