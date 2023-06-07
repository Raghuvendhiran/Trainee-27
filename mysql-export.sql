
CREATE TABLE `Guvi`(
    `Sign-up` VARCHAR(255) NOT NULL,
    `Login` VARCHAR(255) NOT NULL,
    `Zen Class` VARCHAR(255) NOT NULL,
    `Courses` VARCHAR(255) NOT NULL,
    `Codekata` VARCHAR(255) NOT NULL,
    `Webkata` VARCHAR(255) NOT NULL,
    `IDE` VARCHAR(255) NOT NULL,
    `Leaderboard` VARCHAR(255) NOT NULL,
    `Rewards` VARCHAR(255) NOT NULL,
    `Refferal` VARCHAR(255) NOT NULL
);
CREATE TABLE `Sign-up`(
    `First name` VARCHAR(255) NOT NULL,
    `Last name` VARCHAR(255) NOT NULL,
    `Email-id` VARCHAR(255) NOT NULL,
    `Password` INT NOT NULL,
    `Mobile number` INT NOT NULL
);
CREATE TABLE `Log in`(
    `Email-id` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL
);
CREATE TABLE `Zen Class`(
    `Students` VARCHAR(255) NOT NULL,
    `Mentor` VARCHAR(255) NOT NULL
);
CREATE TABLE `Students`(
    `Email` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL,
    `Class` VARCHAR(255) NOT NULL,
    `Dashboard` VARCHAR(255) NOT NULL,
    `Tasks` VARCHAR(255) NOT NULL,
    `Hackathon` VARCHAR(255) NOT NULL,
    `Queries` VARCHAR(255) NOT NULL,
    `Mock Interviews` VARCHAR(255) NOT NULL,
    `Interview Tasks` VARCHAR(255) NOT NULL,
    `Applications` VARCHAR(255) NOT NULL,
    `Leave Aplications` VARCHAR(255) NOT NULL,
    `Certificate` VARCHAR(255) NOT NULL
);
CREATE TABLE `Dashboard`(
    `Attendance` VARCHAR(255) NOT NULL,
    `Overview` VARCHAR(255) NOT NULL,
    `Codekata` VARCHAR(255) NOT NULL,
    `Webkata` VARCHAR(255) NOT NULL,
    `Tasks` VARCHAR(255) NOT NULL
);
CREATE TABLE `Class`(
    `Session Roadmap` VARCHAR(255) NOT NULL,
    `Additional Sessions` VARCHAR(255) NOT NULL,
    `Session Joining Link` VARCHAR(255) NOT NULL,
    `Play Recording` VARCHAR(255) NOT NULL
);
CREATE TABLE `Mock Interviews`(
    `Mock Interview Round` VARCHAR(255) NOT NULL,
    `Interview Date` VARCHAR(255) NOT NULL,
    `OverAll Score` VARCHAR(255) NOT NULL,
    `Recording URL` VARCHAR(255) NOT NULL,
    `Comments` VARCHAR(255) NOT NULL
);
CREATE TABLE `Queries`(
    `Create Query` VARCHAR(255) NOT NULL
);
CREATE TABLE `Create Query`(
    `Instant Solution` VARCHAR(255) NOT NULL,
    `Mentor Assistance` INT NOT NULL
);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_login_foreign` FOREIGN KEY(`Login`) REFERENCES `Log in`(`Email-id`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_zen class_foreign` FOREIGN KEY(`Zen Class`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_courses_foreign` FOREIGN KEY(`Courses`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_codekata_foreign` FOREIGN KEY(`Codekata`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_ide_foreign` FOREIGN KEY(`IDE`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_leaderboard_foreign` FOREIGN KEY(`Leaderboard`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_webkata_foreign` FOREIGN KEY(`Webkata`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_refferal_foreign` FOREIGN KEY(`Refferal`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Guvi` ADD CONSTRAINT `guvi_login_foreign` FOREIGN KEY(`Login`) REFERENCES `Zen Class`(`Students`);
ALTER TABLE
    `Students` ADD CONSTRAINT `students_dashboard_foreign` FOREIGN KEY(`Dashboard`) REFERENCES `Dashboard`(`Attendance`);
ALTER TABLE
    `Students` ADD CONSTRAINT `students_queries_foreign` FOREIGN KEY(`Queries`) REFERENCES `Queries`(`Create Query`);
ALTER TABLE
    `Students` ADD CONSTRAINT `students_class_foreign` FOREIGN KEY(`Class`) REFERENCES `Class`(`Session Roadmap`);
ALTER TABLE
    `Students` ADD CONSTRAINT `students_mock interviews_foreign` FOREIGN KEY(`Mock Interviews`) REFERENCES `Mock Interviews`(`Mock Interview Round`);