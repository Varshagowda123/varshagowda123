<html>
<head><title>Scores</title></head>
<body>
<?php
echo "Name of the student : ";
echo $_POST['name'];
echo"<br />";

$mark = $_POST['mark'];
if($mark>100 || $mark<0) echo "Invalid mark";
else if($mark>=85) echo "Grade : A ";
else if($mark>=70) echo "Grade : B ";
else if($mark>=55) echo "Grade : C ";
else if($mark>=40) echo "Grade : D ";
else if($mark<40 && $mark>=0) echo "Grade : F ";
echo"<br />";

?>
</body>
</html>
