<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <cfset Data = [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
        <cfset dData = serializeJSON(Data)> 
        <cfset result = deserializeJSON(dData)> 
        <div class="table-responsive">
            <table class="table">
                <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Location</th>
                </tr>
                <cfloop array ="#result#" index="row">
                <cfoutput>
                    <tr>
                    <td>#row.Name#</td>
                    <td>#row.Age#</td>
                    <td>#row.LOCATION#</td>
                    </tr>
                </cfoutput>
                </cfloop>
            </table>
        </div>
    </body>
</html>

