<%@ include file = "menu.jsp" %>
<html>
    <head>
        <title>Cinema World</title>
        <link type="image/png" rel="icon" href="movie.png">
    </head>
<style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('806443.jpg');
        }

        .blink {
        	font-size: 150px;
            font-family: serif;
            color: rgb(253, 252, 251);
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            animation: blinker 1s linear infinite;
            text-shadow: 4px 4px 6px red;
            text-shadow: 4px 4px 6px rgb(12, 0, 0), 0 0 35px rgb(255, 0, 0), 0 0 9px rgb(120, 8, 8);

        }
        @keyframes blinker{
            100%{
                opacity: 0;
            }
        }
    </style>
<body>
<center>
<h1 class="blink">welcome</h1>
</center>
</body>
</html>




