[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="seznam">
    [#list seznamVizitek as vizitka]
        <a href="/detail/${vizitka?index}">
        <div class="vizitka">
            <div class="jmeno">${vizitka.jmeno}</div>
            <div class="firma">${vizitka.firma}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${vizitka.ulice}</div>
                    <div><span>${vizitka.obecPsc}</span></div>
                </div>
                <div class="kontakty">
                    <div><i class="las la-at"></i> <span>[#if vizitka.mail??]${vizitka.mail}[#else]<em>Neuvedeno</em>[/#if]</span></div>
                    <div><i class="las la-phone-alt"></i> <span>[#if vizitka.telefon??]${vizitka.telefon}[#else]<em>Neuvedeno</em>[/#if]</span></div>
                    <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                </div>
            </div>
            <form method="post" action="/delete" class="form_delete">
                <input type="hidden" name="id" value="${vizitka?index}"/>
                <button type="submit">Smazat</button>
            </form>
        </div>
    </a>
    [/#list]

    <div class="container">
        <h2 class="container_h2">Přidej vizitku</h2>
        <form action="/" method="post" class="row g-3">
            <div class="container_field">
                <div class="first_field">
                    <div class="first_field_fl">
            <label >Jméno a příjemní: </label>
            <input id="jmeno" type="text" name="jmeno" value="" required>
                    </div>
                    <div class="first_field_fl">
                    <label >Firma: </label>
                    <input id="firma" type="text" name="firma" value="" required>
                    </div>
                </div>
            </div>
       <br>
            <div class="container_field">
                <div class="first_field">
                    <div class="first_field_fl">
                        <label >Ulice: </label>
                        <input id="ulice" type="text" name="ulice" value="" required>
                    </div>
                    <div class="first_field_fl">
                        <label >PSČ: </label>
                        <input id="obecPsc" type="text" name="obecPsc" value="" required>
                    </div>
                </div>
            </div>
            <br>
            <div class="container_field">
                <div class="first_field">
                    <div class="first_field_fl">
                        <label >Mail: </label>
                        <input id="mail" type="text" name="mail" value="" required>
                    </div>
                    <div class="first_field_fl">
                        <label >Telefon: </label>
                        <input id="telefon" type="text" name="telefon" value="" required>
                    </div>
                </div>
            </div>
            <br>
            <div class="container_field">
                <div class="first_field">
                    <div class="first_field_fl">
                        <label >Web: </label>
                        <input id="web" type="text" name="web" value="" required>
                    </div>
                </div>
            </div>
            <br>
            <div class="container_field">
                <div class="first_field">
                    <button type="submit" class="button_add">Přidej</button>
                </div>
            </div>
        </form>
            </div>
    </a>
 </div>
</body>
</html>
