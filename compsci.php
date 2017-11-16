<?php
    require_once('database.php');

  
    // Get courses for selected category
    $query = "SELECT courseID, courseName, credits, crn, section, day, time, location, professorID 
                FROM courses
                WHERE courseID IN (1,2,3)";
                
    //Result set
    $courses = $conn->query($query);
?>

<!DOCTYPE html>
<html>

<html>

    <head>
        <title>CSU Courses</title>
    </head>

    <body>
        <div class="phpBody">
            <link rel="stylesheet" type="text/css" href="classes.css" />
             <h2>Computer Science Course List</h2>
             <table>
                  <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Credits</th>
                    <th>Crn</th>
                    <th>Section</th>
                    <th>Day</th>
                    <th>Time</th>
                    <th>Location</th>
                    <th>Professor ID</th>
                </tr>
                
                <?php foreach ($courses as $course) : ?>
                <tr>
                    <td><?php echo $course['courseID']; ?></td>
                    <td><?php echo $course['courseName']; ?></td>
                    <td><?php echo $course['credits']; ?></td>
                    <td><?php echo $course['crn']; ?></td>
                    <td><?php echo $course['section']; ?></td>
                    <td><?php echo $course['day']; ?></td>
                    <td><?php echo $course['time']; ?></td>
                    <td><?php echo $course['location']; ?></td>
                    <td><?php echo $course['professorID']; ?></td>
                    
                </tr>
                <?php endforeach; ?>
            </table>
        </div>
    
        <div class="footer">
            <p>&copy; <?php echo date("Y"); ?> CSU, Inc.</p>
        </div>
    
    </body>
</html>