<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/stylee.css">
    <title>Midnaverkefni</title>

<body>
    <h2>Söluaðilar eldsneytis á Íslandi</h2>
    <div class="myndir">
    % myndir = ["Ob.jpg","Ao.jpg","Costco.jpg","Dælan.png","N1.png","Orkan.png","OrkanX.png"]
    % for mynd in myndir:
        <div class="mynd">
        <img src="/static/{{mynd}}">
        </div>
    %end
    </div>

    <div class="iphone">
    % comp = []
    % for stod in data['results']:
        % if stod['company'] not in comp:
            % comp.append(stod['company'])
            <div class="event">
               <a href="/company/{{stod['company']}}"><h3>{{stod['company']}}</h3></a>
                <img src="">
            </div>
        %end
    %end
        <div class="ben">
        <h4>ódyrasta bensínið</h4>
            {{odyrtben["company"]}}
            {{odyrtben["name"]}}
           {{odyrtben["bensin95"]}}
        </div>
        <div class="di">
            <h4>ódyrast díesel</h4>
            {{odyrtdi["company"]}}
            {{odyrtdi["name"]}}
            {{odyrtdi["bensin95"]}}

        </div>
        {{t}}
        </div>

</body>
</html>