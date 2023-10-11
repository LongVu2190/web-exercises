<!DOCTYPE html>
<html lang="en-US">

    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css">
        <link rel="stylesheet" href="styles/register.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    </head>

    <body>
        <a href="http://longvu.midjava.com#work" style="position: fixed;
           width: 70px;
           height: 70px;
           bottom: 40px;
           right: 40px;
           background-color: #045b66;
           color: #fff;
           border-radius: 50px;
           text-align: center;
           font-size: 26px;">
            <i class="las la-home" style="margin-top: 22px;"></i>
        </a>
        <div id="surveyForm">
            <form action="SurveyServlet" method="post">
                <input type="hidden" name="action" value="add">

                <div class="title">
                    <h1>Survey</h1>
                    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
                </div>

                <h2>Your information:</h2>

                <input class="information" placeholder="First Name" type="text" name="firstName" required><br>
                <input class="information" placeholder="Last Name" type="text" name="lastName" required><br>
                <input class="information" placeholder="Email" type="email" name="email" required><br>
                <input class="information" type="date" name="dateOfBirth" required><br>

                <h2>How did you hear about us?</h2>

                <div class="radio-button-container">
                    <div class="radio-button">
                        <input type="radio" class="radio-button__input" id="radio1" name="heardFrom" value="Search Engine" checked>
                        <label class="radio-button__label" for="radio1">
                            <span class="radio-button__custom"></span>
                            Search engine
                        </label>
                    </div>
                    <div class="radio-button">
                        <input type="radio" class="radio-button__input" id="radio2" name="heardFrom" value="Friend">
                        <label class="radio-button__label" for="radio2">
                            <span class="radio-button__custom"></span>
                            Word of mouth
                        </label>
                    </div>
                    <div class="radio-button">
                        <input type="radio" class="radio-button__input" id="radio3" name="heardFrom" value="Social Media">
                        <label class="radio-button__label" for="radio3">
                            <span class="radio-button__custom"></span>
                            Social Media
                        </label>
                    </div>
                    <div class="radio-button">
                        <input type="radio" class="radio-button__input" id="radio4" name="heardFrom" value="Other">
                        <label class="radio-button__label" for="radio4">
                            <span class="radio-button__custom"></span>
                            Other
                        </label>
                    </div>
                </div>

                <h2>Would you like to receive announcements about new CDs and special offers?</h2>

                <label class="cyberpunk-checkbox-label">
                    <input type="checkbox" class="cyberpunk-checkbox checkmark" name="wantsUpdates">
                    YES, I'd like that.
                </label>

                <p>Please contact me by:
                    <select name="contactVia" id="contactVia">
                        <option value="Both" selected="">Email or postal mail</option>
                        <option value="Email">Email only</option>
                        <option value="Postal Mail">Postal mail only</option>
                    </select>
                </p>

                <input type="submit" value="Submit" class="comic-button">

                <img src="./images/murachlogo.jpg" id="logo">

            </form>
        </div>


    </body>

</html>