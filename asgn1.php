<html>
    <head>
        <meta charset = "utf-8">
        <link rel = "stylesheet" type = "text/css" href = "asgn1.css">
        <title>Course Search</title>
    </head>
    
    <body>
        <div class ="divBody">
            <div class = "header">
                <h1>Columbus State University</h1>
                <h2>Course Search</h2>
            </div>
                
            <div class ="class_subject">
                Select a semester to enable all other search options:
                <select onChange="dependentFunction()" id="semesterSelect">
                    <option value = selected>--select semester--</option>
                    <option value = "spring">Spring 2018</option>
                    <option value = "summer">Summer 2018</option>
                    <option value = "fall">Fall 2018</option>
                </select>
                
                <br>
                <br>
                
                Subject: 
                <select onChange="location = this.value;" id = "subjectSelect">
                    <option value = selected>--select subject--</option>
                </select>
            </div>    
                <br>
                <br>
                
                <script>
                    function dependentFunction()
                    {
                        var searchList = document.getElementById('semesterSelect');
                        var selection = searchList.options[searchList.selectedIndex].value;
                        var subjectList = document.getElementById('subjectSelect');
                        
                        for (i = 0; i < subjectList.options.length; i++)
                        {
                            subjectList.options[i] = null;
                        }
                        
                        if(selection === "spring")
                        {
                            var opt = document.createElement('option');
                            opt.value = "select";
                            opt.innerHTML = "--select subject--";
                            subjectList.appendChild(opt);
                        
                            var opt = document.createElement('option');
                            opt.value = "compsci.php";
                            opt.innerHTML = "Computer Science";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "engl.php";
                            opt.innerHTML = "English";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "psyc.php";
                            opt.innerHTML = "Psychology";
                            subjectList.appendChild(opt);
                        }
                        
                        else if(selection === "summer")
                        {
                            var opt = document.createElement('option');
                            opt.value = "select";
                            opt.innerHTML = "--select subject--";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "compsci.php";
                            opt.innerHTML = "Computer Science";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "engl.php";
                            opt.innerHTML = "English";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "math.php";
                            opt.innerHTML = "Mathematics";
                            subjectList.appendChild(opt);
                            
                        }
                        
                        else if(selection === "fall")
                        {
                            var opt = document.createElement('option');
                            opt.value = "select";
                            opt.innerHTML = "--select subject--";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "compsci.php";
                            opt.innerHTML = "Computer Science";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "engl.php";
                            opt.innerHTML = "English";
                            subjectList.appendChild(opt);
                            
                            var opt = document.createElement('option');
                            opt.value = "phed.php";
                            opt.innerHTML = "Physical Education";
                            subjectList.appendChild(opt);
                        }
                        
                        else if(selection === "selected")
                        {
                            var opt = document.createElement('option');
                            opt.value = "selected";
                            opt.innerHTML = "--select subject--";
                            subjectList.appendChild(opt);
                        }
                        
                    }
                    
                </script>
        </div>    
    </body>
</html>