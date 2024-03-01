-- EVENT table

CREATE TABLE Event(
	event_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name  TEXT,
	date TEXT CHECK(date IS strftime('%Y-%m-%d', date)),
	location  TEXT,
	description  TEXT
);

-- Volunteer Table

CREATE TABLE Volunteer ( 
    vol_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    phone TEXT, 
    email TEXT CHECK (email LIKE( '%_@__%.__%')), 
    avail_start TEXT CHECK(avail_start LIKE time( avail_start)), 
    avail_end TEXT CHECK(avail_end LIKE time(avail_end)) 
)

-- Shift table

CREATE TABLE Shift (
	shift_id  INTEGER PRIMARY KEY AUTOINCREMENT,
	event_id INTEGER,
	date TEXT CHECK(date IS strftime('%Y-%m-%d', date)),
	t_start  TEXT  CHECK(t_start LIKE time(t_start)),
	t_end  TEXT CHECK(t_end LIKE time(t_end)),
	num_vols INT,
	FOREIGN KEY(event_id) REFERENCES Event(event_id)
)

-- Feedback Table

CREATE TABLE Feedback(
	feedback_id INTEGER PRIMARY KEY AUTOINCREMENT,
	vol_id INTEGER,
	event_id INTEGER,
	rating REAL CHECK (rating  <= 5),
	comment TEXT,
	FOREIGN KEY (vol_id) REFERENCES Volunteer(vol_id)
	FOREIGN KEY (event_id) REFERENCES Event(event_id)
)

-- Role Table

CREATE TABLE Role(
	role_id INTEGER PRIMARY KEY AUTOINCREMENT,
	shift_id INTEGER,
	vol_id INTEGER,
	name TEXT,
	description TEXT,
	FOREIGN KEY (shift_id) REFERENCES Shift(shift_id)
	FOREIGN KEY (vol_id) REFERENCES Volunteer(vol_id)
)

-- Attendance Table

CREATE TABLE Attendance(
	attend_id INTEGER PRIMARY KEY AUTOINCREMENT,
	vol_id INTEGER,
	shift_id INTEGER,
	present INT CHECK (present IN (0,1)),
	FOREIGN KEY (vol_id) REFERENCES Volunteer(vol_id),
	FOREIGN KEY (shift_id) REFERENCES Shift(shift_id)
)

-- Participation Table

CREATE TABLE Participates(
	event_id INTEGER,
	vol_id INTEGER,
	FOREIGN KEY (event_id) REFERENCES Event(event_id),
	FOREIGN KEY (vol_id) REFERENCES Volunteer(vol_id)
);

-- Works Table

CREATE TABLE Works(
	shift_id INTEGER,
	vol_id INTEGER,
	FOREIGN KEY (shift_id) REFERENCES Shift(shift_id),
	FOREIGN KEY (vol_id) REFERENCES Volunteer(vol_id)
);