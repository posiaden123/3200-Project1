# 3200-Project1

Problem: Charities and other event organizers often have problems finding a suitable amount of volunteers for certain drives and events, i.e. soup kitchens.
Objective: Create a database backed application that connects volunteers who sign up to charities and other event hosts that need them, and allows them to coordinate workers.
Sample Tables:
Event:
event_id: PK
name
date
location
description
Volunteer:
vol_id: PK
name
phone
email
avail_start
avail_end
Shift:
shift_id: PK
event_id: FK
date
start
end
num_vols
Role:
role_id: PK
shift_id: FK
vol_id: FK
name
description
Attendance
attend_id: PK
vol_id: FK
shift_id: FK
present: BOOL
time_start
time_end
Feedback
feedback_id: PK
vol_id: FK
event_id: FK
rating
comment