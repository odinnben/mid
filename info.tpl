<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/iphone.css">
    <title>Midnaverkefni</title>
</head>
<body>
<h2>Nánari upplýsingar</h2>
    <div class="iphone">
    % for station in data['results']:
    %   if station['key'] == ok:
            <h3>Fyrirtæki  :  {{station['company']}}</h3>
            <h3>Stafseting  :  {{station['name']}}</h3>
            <h3>bensín verð  :  {{station['bensin95']}}</h3>
            <h3>diesel verð  :  {{station['diesel']}}</h3>
            <a href="/company/{{station['company']}}">til baka</a>
    %   end
% end
    <p></p>
    <a href="/">heim</a>
        </div>
</body>
</html>