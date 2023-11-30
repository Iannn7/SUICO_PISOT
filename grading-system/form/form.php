<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!----======== CSS ======== -->
    <link rel="stylesheet" href="form.css" />

    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />

    <title>Responsive Regisration Form</title>
</head>

<body>
    <div class="container">
        <header>Update Student Record</header>

        <form action="#">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Student Information</span>

                    <div class="fields">
                        <div class="input-field">
                            <input type="hidden" name="ID" value="<?php echo $user['ID']; ?>" />
                            <label>First Name</label>
                            <input type="text" name="FIRST_NAME" value="<?php echo $user['FIRST_NAME']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Middle Name</label>
                            <input type="text" name="MIDDLE_NAME" value="<?php echo $user['MIDDLE_NAME']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Last Name</label>
                            <input type="text" name="LAST_NAME" value="<?php echo $user['LAST_NAME']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Date of Birth</label>
                            <input type="date" name="BIRTH_DATE" value="<?php echo $user['BIRTH_DATE']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Gender</label>
                            <select required>
                                <option disabled selected>Select gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Bayot</option>
                                <option>Tomboy</option>
                                <option>Non-Binary</option>
                                <option>Transformer</option>
                                <option>Horse</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Contact Number</label>
                            <input type="text" name="CONTACT_NUM" value="<?php echo $user['CONTACT_NUM']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Institute</label>
                            <input type="text" name="INSTITUTE" value="<?php echo $user['INSTITUTE']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Course</label>
                            <input type="text" name="COURSE" value="<?php echo $user['COURSE']; ?>">
                        </div>

                        <div class="input-field">
                            <label></label>
                            <input type="text" name="CONTACT_NUM" value="<?php echo $user['CONTACT_NUM']; ?>">
                        </div>

                        <div class="input-field">
                            <label></label>
                            <input type="text" name="CONTACT_NUM" value="<?php echo $user['CONTACT_NUM']; ?>">
                        </div>
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Home Address</span>

                    <div class="fields">

                        <div class="input-field">
                            <label>Purok</label>
                            <input type="text" name="PUROK" value="<?php echo $user['PUROK']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Barangay</label>
                            <input type="text" name="BARANGAY" value="<?php echo $user['BARANGAY']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Municipality</label>
                            <input type="text" name="MUNICIPALITY" value="<?php echo $user['MUNICIPALITY']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Province</label>
                            <input type="text" name="PROVINCE" value="<?php echo $user['PROVINCE']; ?>">
                        </div>

                        <div class="input-field">
                            <label>Zip Code</label>
                            <input type="text" name="ZIP_CODE" value="<?php echo $user['ZIP_CODE']; ?>">
                        </div>
                        <button class="sumbit">
                            <span class="btnText">Submit</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                    </div>
                </div>
            </div>



    </div>
    </div>
    </div>
    </form>
    </div>

    <script src="script.js"></script>
</body>

</html>