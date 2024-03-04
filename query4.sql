-- The following query uses 3 JOINs to deterime which volunteers have attended their events, and gets the event details for each shift they worked

SELECT Volunteer.*, Event.*, Shift.t_start, Shift.t_end
FROM Volunteer
JOIN Attendance a ON Volunteer.vol_id = a.vol_id
JOIN Shift ON a.shift_id = Shift.shift_id
JOIN Event ON Shift.event_id = Event.event_id
WHERE a.present = 1;

-- Snippet of Results
-- vol_id, phone, email, avail_start, avail_end, name, date, description, t_start, t_end
-- 12	(817) 771-0014	eu.odio@icloud.net	8:02:41	12:56:02	101	Ice Bucket Challenge	2023-09-02	Gresham	est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla.	5:50:57	1:04:07
-- 374	(546) 502-3128	vel.sapien@aol.net	2:39:13	5:45:15	92	Cook Off	2023-05-13	Fort Smith	neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida.	2:49:25	12:24:05
-- 292	(542) 182-8498	volutpat.nulla@google.ca	9:43:44	2:52:10	81	Ice Bucket Challenge	2023-12-15	Lexington	semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu	3:25:56	9:33:21
-- 400	(196) 383-4971	lobortis.nisi.nibh@icloud.net	7:02:34	6:47:58	158	Ice Bucket Challenge	2024-09-11	Oklahoma City	cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla	9:16:48	6:11:35
-- 330	(226) 928-3493	non@google.net	8:26:19	5:23:51	32	Cook Off	2023-07-26	Lewiston	commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi	3:15:39	10:42:37