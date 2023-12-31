<?php

session_start();



?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grading System</title>

    <!--font awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

    <!--css file-->
    <link rel="stylesheet" href="../CSS/main.css" />
    <link rel="stylesheet" href="../CSS/tables.css">
</head>

<body>

    <?php  if (isset($_SESSION["ROLE"])):

          ?>

    <div class="sidebar close">
        <div class="logo">
            <span class="logo-name" style="margin: 0 auto;">Grading System</span>
        </div>

        <ul class="nav-list">
            <li>
                <a href="../index.php">
                    <i class="fab fa-microsoft"></i>
                    <span class="link-name">Dashboard</span>
                </a>

                <ul class="sub-menu blank">
                    <li><a href="../index.php" class="link-name">Dashboard</a></li>
                </ul>
            </li>

            <li>
                <div class="icon-link">
                    <a href="students.php">
                        <i class="fa-solid fa-user"></i>
                        <span class="link-name">Student</span>
                    </a>
                    <i class="fas fa-caret-down arrow"></i>
                </div>

                <ul class="sub-menu">
                    <li><a href="../student/students.php" class="link-name">Student Records</a></li>
                    <li><a href="../student/student-list.php">List of Students</a></li>
                    <li><a href="../student/home-address.php">Home Address</a></li>
                    <li><a href="../student/emergency.php">Emergency Contact</a></li>
                    <li><a href="../student/new-record.php">Add New Record</a></li>
                </ul>
            </li>

            <li>
                <div class="icon-link">
                    <a href="../faculty/faculty.php">
                        <i class="fa-solid fa-users"></i>
                        <span class="link-name">Faculty</span>
                    </a>
                    <i class="fas fa-caret-down arrow"></i>
                </div>

                <ul class="sub-menu">
                    <li><a href="#" class="link-name">Faculty Record</a></li>
                    <li><a href="faculty-list.php">List of Faculty</a></li>
                    <li><a href="new-record.php">Add New Record</a></li>
                </ul>
            </li>

            <li>
                <div class="icon-link">
                    <a href="../subject/subject.php">
                        <i class="fa-solid fa-atom"></i>
                        <span class="link-name">Subject</span>
                    </a>
                    <i class="fas fa-caret-down arrow"></i>
                </div>

                <ul class="sub-menu">
                    <li><a href="../subject/subject.php" class="link-name">Subject</a></li>
                    <li><a href="../subject/subject-list.php">List of Students</a></li>
                    <li><a href="../subject/new-record.php">Add New Record</a></li>
                </ul>
            </li>

            <li class="see">
                <div class="icon-link">
                    <a href="course.php">
                        <i class="fab fa-codepen"></i>
                        <span class="link-name">Course</span>
                    </a>
                    <i class="fas fa-caret-down arrow"></i>
                </div>

                <ul class="sub-menu">
                    <li><a href="course.php" class="link-name">Courses</a></li>
                    <li><a href="course-list.php">Available Courses</a></li>
                    <li><a href="new-record.php">Add New Record</a></li>
                </ul>
            </li>

            <li>
                <div class="icon-link">
                    <a href="../institute/institute.php">
                        <i class="fa-solid fa-folder-open"></i>
                        <span class="link-name">Institute</span>
                    </a>
                    <i class="fas fa-caret-down arrow"></i>
                </div>

                <ul class="sub-menu">
                    <li><a href="../institute/institute.php" class="link-name">Institute</a></li>
                    <li><a href="../institute/institute-list.php">List of Students</a></li>
                    <li><a href="../institute/new-record.php">Add New Record</a></li>
                </ul>
            </li>

            <li>
                <div class="icon-link">
                    <a href="../semester/semester.php">
                        <i class="fa-regular fa-calendar"></i>
                        <span class="link-name">Semester</span>
                    </a>
                </div>
            </li>

            <li>
                <div class="icon-link">
                    <a href="../grade/grade.php">
                        <i class="fa-solid fa-award"></i>
                        <span class="link-name">Grade</span>
                    </a>
                </div>
            </li>

            <li>
                <div class="profile-details">
                    <div class="profile-content">
                        <a href="../profile.php?update=<?= $_SESSION["ROLE"]; ?>"><img src="../img/user.jpg"
                                alt="" /></a>
                    </div>
                    <div class="name-job">
                        <div class="name"><a href="profile.php" style="color: white;">Admin</a> </div>
                        <div class="job">Admin</div>
                    </div>
                    <a href="../login.php"><i class="fas fa-right-to-bracket"></i></a>
                </div>
            </li>
        </ul>
    </div>

    <div class="home-section">
        <div class="home-content">
            <i class="fas fa-bars"></i>
            <form action="#">
                <div class="form-input">
                    <input placeholder="Search Courses" style="background-color: white;" type="text" name="search"
                        required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" />
                    <button type="submit" class="search-btn">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
            </form>
        </div>



        <table class="content-table">
            <thead>
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th colspan="2">Operations</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $con = mysqli_connect("localhost","root","","grading_system");

                      if(isset($_GET['delete'])){
                         $id = $_GET['delete'];
                                    
                                    
                        $query = "DELETE FROM course WHERE ID = $id";
                                    
                      if(mysqli_query($con, $query)){
                        echo '<script type="text/javascript">
                              window.onload = function () { alert("Deleted Successfully"); } 
                              </script>'; 
                      }else{
                        echo '<script type="text/javascript">
                            window.onload = function () { alert("Error Deleting Record"); } 
                            </script>'; 
                     }
                    }
            
                      if(isset($_GET['search']))
                      {
                        $filtervalues = $_GET['search'];
                        $query = "SELECT * FROM faculty WHERE CONCAT(ID, COURSE_NAME ) LIKE '%$filtervalues%' ";
                        $query_run = mysqli_query($con, $query);

                      if(mysqli_num_rows($query_run) > 0)
                        {
                      foreach($query_run as $row)
                        {
                    ?>

                <tr>

                    <td><?= $row['ID']; ?></td>
                    <td><?= $row['COURSE_NAME']; ?></td>\
                    <td>
                        <a href="faculty.php?delete=<?= $row['ID']; ?>">Delete</a>
                        <a href="update.php?update=<?= $row['ID']; ?>">Update</a>
                    </td>

                </tr>
                <?php
                                            }
                }
                else
                {
                ?>
                <tr>
                    <td colspan="4">No Record Found</td>
                </tr>
                <?php
                                        }
                                    }
                                ?>
            </tbody>
        </table>
    </div>
    </div>
    </main>
    <!-- MAIN -->
    </section>
    <!-- CONTENT -->

    <?php else: ?>

    <?php require_once("../login.php"); ?>

    <?php endif; ?>

    <script src="../app.js"></script>
</body>

</html>