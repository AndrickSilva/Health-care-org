<html>
    <head>
        <script src='https://cdn.scaledrone.com/scaledrone.min.js'></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <link href="css/doctor.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="copy">Please be patient !<br>
            Connecting to Your Doctor.....</div>

        
        <div class="simptoms">
            <h2>Symptoms</h2>
            <%= request.getParameter("name")%></div>
        <video id="localVideo" autoplay muted></video>
        <video id="remoteVideo" autoplay></video>

        <script src="script.js"></script>
    </body>
</html>