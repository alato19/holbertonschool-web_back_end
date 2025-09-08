export default function getStudentIdsSum(students) {
  return students.reduce((acc, student) => {
    console.log("student----", acc + student.id);
    return acc + student.id;
  }, 0);
}
