<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/iphone.css">
    <title>Midnaverkefni </title>
</head>
<body>
<h2>Bensínstöðvar</h2>
    <div class="iphone">
    % margar = 0 
    % for stod in data['results']:
        % if stod['company'] == slod:
            % margar += 1
            <div class="event">
               <a href="/info/{{stod['key']}}"><h3>{{stod['company']}} {{stod['name']}}</h3></a>
            </div>
    %end
    %end
        <h3>Fjöldi stöðvar: {{margar}}</h3>
        <a href="/">heim</a>
        </div>
</body>
</html>