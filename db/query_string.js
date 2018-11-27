exports.createUpdateStudentQueryString = function createStudentInsertQueryStringFromData(data) {
  return `UPDATE student SET primary_major=\'${data['major']}\', primary_minor=\'${data['minor']}\', certificate=\'${data['certificate']}\', favorite_class=\'${data['favClass']}\', favorite_professor=\'${data['favProf']}\' WHERE netid=\'${data['netid']}\';`
}

exports.createSelectQueryString = function createSelectQueryStringFromData(netid) {
  return `SELECT * FROM
  Student INNER JOIN Course ON Student.Favorite_Class=Course.Course_Number
  WHERE NetID=\'${netid}\';`
}

exports.createNewUserQueryString = function createNewUserQueryString(netid, name) {
  return `INSERT INTO Student VALUES (\'${netid}\', \'${name}\');`;
}

exports.groupsPageQueryString = function groupsPageQueryString(netid) {
  return `SELECT * FROM
  In_Study_Group
  INNER JOIN
  Study_Group ON In_Study_Group.Group_ID=Study_Group.Group_ID
  INNER JOIN Course ON Study_Group.Course_Number=Course.Course_Number WHERE In_Study_Group.NetID != \'${netid}\' AND In_Study_Group.Group_ID IN (SELECT Group_ID FROM In_Study_Group WHERE NetID=\'${netid}\');`
}

exports.dropDownDepartmentQueryString = function dropDownDepartmentQueryString() {
  return `SELECT DISTINCT Department FROM Course;`
}

exports.dropDownCourseQueryString = function dropDownCourseQueryString(department) {
  return `SELECT Course_Number, Department, Level FROM Course WHERE
  Department=\'${department}\';`
}

exports.selectTutoringQueryString = function selectTutoringQueryString(netid) {
  return `SELECT * FROM Tutor WHERE NetID=\'${netid}\';`
}

exports.insertTutorQueryString = function insertTutorQueryString(data) {
  return `INSERT INTO Tutor VALUES (\'${data['netid']}\', \'${data['rate']}\', \'${data['availability']}\') ON CONFLICT (NetID) DO UPDATE SET Rate_Per_Hour=\'${data['rate']}\', Days_Available=\'${data['availability']}\';`
}

exports.allUsersQueryString = function allUsersQueryString(netid) {
  return `SELECT NetID, Name FROM Student WHERE NetID != \'${netid}\';`
}

exports.insertStudyGroupQueryString = function insertStudyGroupQueryString(groupID, courseID, year) {
  return `INSERT INTO Study_Group VALUES (\'${groupID}\', \'${courseID}\', \'${year}\');`
}

exports.insertInStudyGroupQueryString = function insertInStudyGroupQueryString(groupID, netID) {
  return `INSERT INTO In_Study_Group VALUES (\'${groupID}\', \'${netID}\');`
}

exports.removeUserFromGroupQueryString = function removeUserFromGroupQueryString(netid, groupID) {
  return `DELETE FROM In_Study_Group WHERE Group_ID=\'${groupID}\' AND NetID=\'${netid}\';`
}
