<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 11/10/2022
  Time: 12:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
    <title>Login Page</title>
</head>
<body id="login-body" class="d-flex">
<div
        id="left-side-main-container"
        class="w-50 d-flex flex-column justify-content-evenly align-items-center"
>
    <h2 class="fw-bolder fs-1">Welcome Back!</h2>

    <form action="login" method="POST" id="form-container">
        <label for="username" class="__form_labels">Email</label>
        <input type="text" name="email" id="username" class="__inputs" />
        <label for="password" class="__form_labels mt-4">Password</label>
        <input type="password" name="password" id="password" class="__inputs" />
        <div id="help-container" class="mt-4 py-2">
            <input type="checkbox" name="keepLoged" id="checkbox" />
            <label for="checkbox" class="me-3">Keep me logged in</label>
            <a href="" class="text-white">Forgot Password?</a>
        </div>
        <div class="mt-5 text-center">
            <button type="submit">Login</button>
        </div>
    </form>


</div>
<div
        id="right-side-main-container"
        class="w-50 p-5 text-center d-flex justify-content-around align-items-center"
>
    <svg
            class="animated"
            id="freepik_stories-logic"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 500 500"
            version="1.1"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            xmlns:svgjs="http://svgjs.com/svgjs"
    >
        <style>
            svg#freepik_stories-logic:not(.animated) .animable {
                opacity: 0;
            }
            svg#freepik_stories-logic.animated
            #freepik--background-simple--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38)
                slideRight;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--Floor--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38)
                lightSpeedLeft;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--Clock--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38)
                slideDown;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--Window--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38) zoomIn;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--Puzzle--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38)
                slideLeft;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--Plant--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38)
                slideRight;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--figure-2--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38)
                slideLeft;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--figure-1--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38)
                slideUp;
                animation-delay: 0s;
            }
            svg#freepik_stories-logic.animated #freepik--Character--inject-209 {
                animation: 1s 1 forwards cubic-bezier(0.36, -0.01, 0.5, 1.38) zoomIn;
                animation-delay: 0s;
            }
            @keyframes slideRight {
                0% {
                    opacity: 0;
                    transform: translateX(30px);
                }
                100% {
                    opacity: 1;
                    transform: translateX(0);
                }
            }
            @keyframes lightSpeedLeft {
                from {
                    transform: translate3d(-50%, 0, 0) skewX(20deg);
                    opacity: 0;
                }
                60% {
                    transform: skewX(-10deg);
                    opacity: 1;
                }
                80% {
                    transform: skewX(2deg);
                }
                to {
                    opacity: 1;
                    transform: translate3d(0, 0, 0);
                }
            }
            @keyframes slideDown {
                0% {
                    opacity: 0;
                    transform: translateY(-30px);
                }
                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
            @keyframes zoomIn {
                0% {
                    opacity: 0;
                    transform: scale(0.5);
                }
                100% {
                    opacity: 1;
                    transform: scale(1);
                }
            }
            @keyframes slideLeft {
                0% {
                    opacity: 0;
                    transform: translateX(-30px);
                }
                100% {
                    opacity: 1;
                    transform: translateX(0);
                }
            }
            @keyframes slideUp {
                0% {
                    opacity: 0;
                    transform: translateY(30px);
                }
                100% {
                    opacity: 1;
                    transform: inherit;
                }
            }
        </style>
        <g
                id="freepik--background-simple--inject-209"
                class="animable"
                style="transform-origin: 246.144px 229.987px"
        >
            <path
                    d="M464.86,277.39c-14.73,39.43-44.81,82.11-87.14,94.75-64,19.1-71.6,70.65-186.16,65.87A230.92,230.92,0,0,1,142,430.75,194.41,194.41,0,0,1,118.73,423C51.8,395.89,16.89,336.23,14,273.81c-3.82-82.11,53.46-121.24,90.69-144.15S186.79,18,299.44,21.77a224.06,224.06,0,0,1,50.92,7.44c37.91,10.26,76.44,32.95,98.84,66.12q2.52,3.75,4.82,7.64C484,153.82,484.93,223.63,464.86,277.39Z"
                    style="
              fill: rgb(64, 123, 255);
              transform-origin: 246.144px 229.987px;
            "
                    id="el16mpamxc70l"
                    class="animable"
            ></path>
            <g id="elwfzghm4jzf">
                <path
                        d="M464.86,277.39c-14.73,39.43-44.81,82.11-87.14,94.75-64,19.1-71.6,70.65-186.16,65.87A230.92,230.92,0,0,1,142,430.75,194.41,194.41,0,0,1,118.73,423C51.8,395.89,16.89,336.23,14,273.81c-3.82-82.11,53.46-121.24,90.69-144.15S186.79,18,299.44,21.77a224.06,224.06,0,0,1,50.92,7.44c37.91,10.26,76.44,32.95,98.84,66.12q2.52,3.75,4.82,7.64C484,153.82,484.93,223.63,464.86,277.39Z"
                        style="
                fill: rgb(255, 255, 255);
                opacity: 0.7;
                transform-origin: 246.144px 229.987px;
              "
                        class="animable"
                ></path>
            </g>
        </g>
        <g
                id="freepik--Floor--inject-209"
                class="animable"
                style="transform-origin: 252.5px 471.33px"
        >
            <line
                    x1="89"
                    y1="471.33"
                    x2="479"
                    y2="471.33"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 284px 471.33px;
            "
                    id="elp6118myc0m"
                    class="animable"
            ></line>
            <line
                    x1="26"
                    y1="471.33"
                    x2="80"
                    y2="471.33"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 53px 471.33px;
            "
                    id="elydxdu7jo8mr"
                    class="animable"
            ></line>
        </g>
        <g
                id="freepik--Clock--inject-209"
                class="animable"
                style="transform-origin: 76px 71px"
        >
            <g id="elg1vhjbid5g">
                <g
                        style="opacity: 0.3; transform-origin: 76px 71px"
                        class="animable"
                >
                    <circle
                            cx="76"
                            cy="71"
                            r="43"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 76px 71px;
                "
                            id="el1nxgieagcm1"
                            class="animable"
                    ></circle>
                    <circle
                            cx="76"
                            cy="71"
                            r="37"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 76px 71px;
                "
                            id="elh7tp0nvcgtq"
                            class="animable"
                    ></circle>
                    <polyline
                            points="68.93 80.22 76 71 58.21 52.28"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 67.105px 66.25px;
                "
                            id="elyqh55tq6t2"
                            class="animable"
                    ></polyline>
                </g>
            </g>
        </g>
        <g
                id="freepik--Window--inject-209"
                class="animable"
                style="transform-origin: 381.17px 175.23px"
        >
            <g id="elnyjxulncr4s">
                <g
                        style="opacity: 0.3; transform-origin: 381.17px 175.23px"
                        class="animable"
                >
                    <path
                            d="M285.69,28V322.46h95.66V28Zm90.84,6.55V78H336.72V34.54Zm-45.76,0V78H290.51V34.54ZM290.51,84.89h40.26V128H290.51Zm86,231h-86V135.5h86ZM336.72,128V84.89h39.81V128Z"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 333.52px 175.23px;
                "
                            id="elmllo2a1ujel"
                            class="animable"
                    ></path>
                    <path
                            d="M381,28V322.46h95.65V28Zm90.83,6.55V78H432V34.54Zm-45.76,0V78H385.79V34.54ZM385.79,84.89h40.26V128H385.79Zm86,231h-86V135.5h86ZM432,128V84.89h39.81V128Z"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 428.825px 175.23px;
                "
                            id="eltl9q1s3xpcf"
                            class="animable"
                    ></path>
                    <line
                            x1="355.12"
                            y1="184.37"
                            x2="331.1"
                            y2="214.26"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 343.11px 199.315px;
                "
                            id="elqbtiaznxtp"
                            class="animable"
                    ></line>
                    <line
                            x1="361.08"
                            y1="176.95"
                            x2="357.26"
                            y2="181.71"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 359.17px 179.33px;
                "
                            id="el5abi1zspeom"
                            class="animable"
                    ></line>
                    <line
                            x1="304.99"
                            y1="236.06"
                            x2="300.08"
                            y2="241.84"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 302.535px 238.95px;
                "
                            id="elt8cvxb1n36"
                            class="animable"
                    ></line>
                    <line
                            x1="336.89"
                            y1="198.58"
                            x2="308.68"
                            y2="231.73"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 322.785px 215.155px;
                "
                            id="elpoch0kpvj1"
                            class="animable"
                    ></line>
                    <line
                            x1="451.88"
                            y1="193.5"
                            x2="427.86"
                            y2="223.39"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 439.87px 208.445px;
                "
                            id="ele05t61r7xba"
                            class="animable"
                    ></line>
                    <line
                            x1="457.84"
                            y1="186.08"
                            x2="454.02"
                            y2="190.83"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 455.93px 188.455px;
                "
                            id="elzl7lew8jpso"
                            class="animable"
                    ></line>
                    <line
                            x1="401.76"
                            y1="245.18"
                            x2="396.84"
                            y2="250.96"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 399.3px 248.07px;
                "
                            id="elhlgcikbvybs"
                            class="animable"
                    ></line>
                    <line
                            x1="433.65"
                            y1="207.71"
                            x2="405.44"
                            y2="240.86"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 419.545px 224.285px;
                "
                            id="eld0tn9jhue7v"
                            class="animable"
                    ></line>
                    <line
                            x1="462.97"
                            y1="41.37"
                            x2="451.47"
                            y2="55.67"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 457.22px 48.52px;
                "
                            id="el6aaadmldtp"
                            class="animable"
                    ></line>
                    <line
                            x1="465.82"
                            y1="37.82"
                            x2="464"
                            y2="40.09"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 464.91px 38.955px;
                "
                            id="elq09mix2z4s"
                            class="animable"
                    ></line>
                    <line
                            x1="438.98"
                            y1="66.11"
                            x2="436.62"
                            y2="68.87"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 437.8px 67.49px;
                "
                            id="eln335nud0xvh"
                            class="animable"
                    ></line>
                    <line
                            x1="454.24"
                            y1="48.17"
                            x2="440.74"
                            y2="64.04"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 447.49px 56.105px;
                "
                            id="eld7dfx1ew0rf"
                            class="animable"
                    ></line>
                    <line
                            x1="418.11"
                            y1="41.37"
                            x2="406.62"
                            y2="55.67"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 412.365px 48.52px;
                "
                            id="elrii5hrz9i4t"
                            class="animable"
                    ></line>
                    <line
                            x1="420.97"
                            y1="37.82"
                            x2="419.14"
                            y2="40.09"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 420.055px 38.955px;
                "
                            id="elmh4uxq41isb"
                            class="animable"
                    ></line>
                    <line
                            x1="394.12"
                            y1="66.11"
                            x2="391.77"
                            y2="68.87"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 392.945px 67.49px;
                "
                            id="elpjfur6cbsuh"
                            class="animable"
                    ></line>
                    <line
                            x1="409.39"
                            y1="48.17"
                            x2="395.89"
                            y2="64.04"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 402.64px 56.105px;
                "
                            id="elr9e9pvtvqrd"
                            class="animable"
                    ></line>
                    <line
                            x1="418.11"
                            y1="94.96"
                            x2="406.62"
                            y2="109.27"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 412.365px 102.115px;
                "
                            id="ellpxxrv2ed4"
                            class="animable"
                    ></line>
                    <line
                            x1="420.97"
                            y1="91.41"
                            x2="419.14"
                            y2="93.69"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 420.055px 92.55px;
                "
                            id="elmq1xd8chs3"
                            class="animable"
                    ></line>
                    <line
                            x1="394.12"
                            y1="119.7"
                            x2="391.77"
                            y2="122.47"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 392.945px 121.085px;
                "
                            id="elxz6xqeuy2cg"
                            class="animable"
                    ></line>
                    <line
                            x1="409.39"
                            y1="101.76"
                            x2="395.89"
                            y2="117.63"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 402.64px 109.695px;
                "
                            id="eluh8gke0eha"
                            class="animable"
                    ></line>
                    <line
                            x1="458.12"
                            y1="94.96"
                            x2="446.63"
                            y2="109.27"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 452.375px 102.115px;
                "
                            id="el03glw410b0l"
                            class="animable"
                    ></line>
                    <line
                            x1="460.97"
                            y1="91.41"
                            x2="459.15"
                            y2="93.69"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 460.06px 92.55px;
                "
                            id="el2uosv2fnpoc"
                            class="animable"
                    ></line>
                    <line
                            x1="434.13"
                            y1="119.7"
                            x2="431.77"
                            y2="122.47"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 432.95px 121.085px;
                "
                            id="el1b0eqoeelpo"
                            class="animable"
                    ></line>
                    <line
                            x1="449.39"
                            y1="101.76"
                            x2="435.89"
                            y2="117.63"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 442.64px 109.695px;
                "
                            id="elakqczsuwasj"
                            class="animable"
                    ></line>
                    <line
                            x1="368.41"
                            y1="41.37"
                            x2="356.92"
                            y2="55.67"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 362.665px 48.52px;
                "
                            id="elpfwx0du0gg"
                            class="animable"
                    ></line>
                    <line
                            x1="371.26"
                            y1="37.82"
                            x2="369.44"
                            y2="40.09"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 370.35px 38.955px;
                "
                            id="elyjbpt8kxdc"
                            class="animable"
                    ></line>
                    <line
                            x1="344.42"
                            y1="66.11"
                            x2="342.06"
                            y2="68.87"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 343.24px 67.49px;
                "
                            id="elziq3way24bh"
                            class="animable"
                    ></line>
                    <line
                            x1="359.68"
                            y1="48.17"
                            x2="346.18"
                            y2="64.04"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 352.93px 56.105px;
                "
                            id="elg8h38lqew7i"
                            class="animable"
                    ></line>
                    <line
                            x1="368.41"
                            y1="93.72"
                            x2="356.92"
                            y2="108.02"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 362.665px 100.87px;
                "
                            id="eliyqkduihgyj"
                            class="animable"
                    ></line>
                    <line
                            x1="371.26"
                            y1="90.17"
                            x2="369.44"
                            y2="92.44"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 370.35px 91.305px;
                "
                            id="el9lti16wifr"
                            class="animable"
                    ></line>
                    <line
                            x1="344.42"
                            y1="118.46"
                            x2="342.06"
                            y2="121.22"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 343.24px 119.84px;
                "
                            id="elogjpep1ks2e"
                            class="animable"
                    ></line>
                    <line
                            x1="359.68"
                            y1="100.52"
                            x2="346.18"
                            y2="116.39"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 352.93px 108.455px;
                "
                            id="elnsicmv1c2yd"
                            class="animable"
                    ></line>
                    <line
                            x1="324.77"
                            y1="93.72"
                            x2="313.27"
                            y2="108.02"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 319.02px 100.87px;
                "
                            id="el9gzzayon9qv"
                            class="animable"
                    ></line>
                    <line
                            x1="327.62"
                            y1="90.17"
                            x2="325.79"
                            y2="92.44"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 326.705px 91.305px;
                "
                            id="el9eqqvqzucl8"
                            class="animable"
                    ></line>
                    <line
                            x1="300.78"
                            y1="118.46"
                            x2="298.42"
                            y2="121.22"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 299.6px 119.84px;
                "
                            id="elcz6ndc8y8h"
                            class="animable"
                    ></line>
                    <line
                            x1="316.04"
                            y1="100.52"
                            x2="302.54"
                            y2="116.39"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 309.29px 108.455px;
                "
                            id="elrndrck8osw"
                            class="animable"
                    ></line>
                    <line
                            x1="321.74"
                            y1="41.37"
                            x2="310.24"
                            y2="55.67"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 315.99px 48.52px;
                "
                            id="elx8p3jchp01p"
                            class="animable"
                    ></line>
                    <line
                            x1="324.59"
                            y1="37.82"
                            x2="322.76"
                            y2="40.09"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 323.675px 38.955px;
                "
                            id="ellkcaxtq5bb"
                            class="animable"
                    ></line>
                    <line
                            x1="297.75"
                            y1="66.11"
                            x2="295.39"
                            y2="68.87"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 296.57px 67.49px;
                "
                            id="eloge6gs4sym8"
                            class="animable"
                    ></line>
                    <line
                            x1="313.01"
                            y1="48.17"
                            x2="299.51"
                            y2="64.04"
                            style="
                  fill: none;
                  stroke: rgb(0, 0, 0);
                  stroke-linecap: round;
                  stroke-linejoin: round;
                  transform-origin: 306.26px 56.105px;
                "
                            id="elge7e64fte7r"
                            class="animable"
                    ></line>
                </g>
            </g>
        </g>
        <g
                id="freepik--Puzzle--inject-209"
                class="animable"
                style="transform-origin: 225.975px 216.19px"
        >
            <rect
                    x="337.58"
                    y="208"
                    width="5.42"
                    height="26"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 340.29px 221px;
            "
                    id="elusfx8soc2lm"
                    class="animable"
            ></rect>
            <polygon
                    points="157.5 181.91 153.47 188.9 195.41 261.54 203.47 261.54 157.5 181.91"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 178.47px 221.725px;
            "
                    id="el9i80f7dajtv"
                    class="animable"
            ></polygon>
            <polygon
                    points="276 277.39 271.63 280.57 310.64 308.91 294.07 359.9 302.81 359.9 319.38 308.91 276 277.39"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 295.505px 318.645px;
            "
                    id="elgbqrwns9sj"
                    class="animable"
            ></polygon>
            <rect
                    x="90.95"
                    y="54.38"
                    width="15.58"
                    height="323.62"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 98.74px 216.19px;
            "
                    id="el9j6h4k3rbh5"
                    class="animable"
            ></rect>
            <path
                    d="M97,54.38V378H361V54.38Zm14.53,207.16,46-79.62,46,79.62ZM302.81,359.9H249.19l-16.56-51L276,277.39l43.37,31.52ZM343,234H206V208H343Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 229px 216.19px;
            "
                    id="elyt3znoq9jj"
                    class="animable"
            ></path>
            <rect
                    x="121"
                    y="82"
                    width="80"
                    height="80"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 161px 122px;
            "
                    id="ellgpb47pamvf"
                    class="animable"
            ></rect>
            <circle
                    cx="275"
                    cy="121"
                    r="41"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 275px 121px;
            "
                    id="eleroq6ptci5u"
                    class="animable"
            ></circle>
            <polygon
                    points="161 278.22 174.16 304.89 203.59 309.16 182.29 329.92 187.32 359.23 161 345.39 134.68 359.23 139.71 329.92 118.41 309.16 147.84 304.89 161 278.22"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 161px 318.725px;
            "
                    id="el8ng7exvqc4r"
                    class="animable"
            ></polygon>
        </g>
        <g
                id="freepik--Plant--inject-209"
                class="animable"
                style="transform-origin: 46.22px 360.855px"
        >
            <line
                    x1="27.51"
                    y1="297.02"
                    x2="41.21"
                    y2="428.29"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 34.36px 362.655px;
            "
                    id="elb2v0uj5copc"
                    class="animable"
            ></line>
            <line
                    x1="39"
                    y1="403.17"
                    x2="32.79"
                    y2="396.61"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 35.895px 399.89px;
            "
                    id="elje15xgpesue"
                    class="animable"
            ></line>
            <path
                    d="M34.68,398.57a7.06,7.06,0,0,0-2.48-5.27c-1.59-1.42-10-4.95-10.78-2C20.56,394.52,29.15,400.83,34.68,398.57Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 28.02px 394.603px;
            "
                    id="elan4yybuy1u4"
                    class="animable"
            ></path>
            <line
                    x1="34.68"
                    y1="398.57"
                    x2="26.69"
                    y2="393.6"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 30.685px 396.085px;
            "
                    id="elnmxxxhta19q"
                    class="animable"
            ></line>
            <line
                    x1="40.56"
                    y1="418.1"
                    x2="34.35"
                    y2="411.54"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 37.455px 414.82px;
            "
                    id="ely7zy9drby9s"
                    class="animable"
            ></line>
            <path
                    d="M36.23,413.5a7,7,0,0,0-2.47-5.27c-1.59-1.42-10-5-10.78-2C22.12,409.45,30.7,415.76,36.23,413.5Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 29.575px 409.522px;
            "
                    id="elx9rjjtws3jq"
                    class="animable"
            ></path>
            <line
                    x1="36.23"
                    y1="413.5"
                    x2="28.25"
                    y2="408.52"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 32.24px 411.01px;
            "
                    id="elq3cbskam57"
                    class="animable"
            ></line>
            <line
                    x1="35.2"
                    y1="366.74"
                    x2="28.99"
                    y2="360.18"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 32.095px 363.46px;
            "
                    id="el5n2xqx6b4wh"
                    class="animable"
            ></line>
            <path
                    d="M30.87,362.14a7,7,0,0,0-2.47-5.27c-1.59-1.42-10-4.95-10.78-2C16.76,358.09,25.34,364.4,30.87,362.14Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 24.215px 358.173px;
            "
                    id="elzkk2b8z6qb"
                    class="animable"
            ></path>
            <line
                    x1="30.87"
                    y1="362.14"
                    x2="22.89"
                    y2="357.16"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 26.88px 359.65px;
            "
                    id="elldybq10xrxe"
                    class="animable"
            ></line>
            <line
                    x1="36.76"
                    y1="381.67"
                    x2="30.55"
                    y2="375.11"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 33.655px 378.39px;
            "
                    id="eltp6plqhxh2"
                    class="animable"
            ></line>
            <path
                    d="M32.43,377.07A7,7,0,0,0,30,371.8c-1.59-1.42-10-4.95-10.78-2C18.31,373,26.9,379.33,32.43,377.07Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 25.7916px 373.102px;
            "
                    id="elj3i1p7k2trh"
                    class="animable"
            ></path>
            <line
                    x1="32.43"
                    y1="377.07"
                    x2="24.45"
                    y2="372.09"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 28.44px 374.58px;
            "
                    id="elod45p6vv6pl"
                    class="animable"
            ></line>
            <line
                    x1="32.67"
                    y1="342.48"
                    x2="26.46"
                    y2="335.92"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 29.565px 339.2px;
            "
                    id="el5mnb7u34q26"
                    class="animable"
            ></line>
            <path
                    d="M28.34,337.89a7,7,0,0,0-2.47-5.27c-1.59-1.42-10-4.95-10.78-2C14.23,333.84,22.81,340.15,28.34,337.89Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 21.685px 333.923px;
            "
                    id="eliwm82vyh9m"
                    class="animable"
            ></path>
            <line
                    x1="28.34"
                    y1="337.89"
                    x2="20.36"
                    y2="332.91"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 24.35px 335.4px;
            "
                    id="el5vly6br3b2e"
                    class="animable"
            ></line>
            <line
                    x1="30.12"
                    y1="318.13"
                    x2="23.91"
                    y2="311.57"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 27.015px 314.85px;
            "
                    id="el5009uvdeohi"
                    class="animable"
            ></line>
            <path
                    d="M25.8,313.53a7,7,0,0,0-2.47-5.27c-1.59-1.42-10-4.95-10.78-2C11.68,309.48,20.27,315.79,25.8,313.53Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 19.1444px 309.563px;
            "
                    id="elql4qeqpd4p"
                    class="animable"
            ></path>
            <line
                    x1="25.8"
                    y1="313.53"
                    x2="17.81"
                    y2="308.55"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 21.805px 311.04px;
            "
                    id="ely7s7thmoof"
                    class="animable"
            ></line>
            <line
                    x1="37.96"
                    y1="394.33"
                    x2="42.68"
                    y2="386.63"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 40.32px 390.48px;
            "
                    id="eln6t61ro2qih"
                    class="animable"
            ></line>
            <path
                    d="M41.24,389a7.06,7.06,0,0,1,1.33-5.67c1.27-1.72,8.75-6.91,10.13-4.18C54.22,382.06,47.12,390,41.24,389Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 47.0074px 383.729px;
            "
                    id="elbdc4cexqtxp"
                    class="animable"
            ></path>
            <line
                    x1="41.24"
                    y1="388.95"
                    x2="48.43"
                    y2="382.07"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 44.835px 385.51px;
            "
                    id="el7l2caqnceu5"
                    class="animable"
            ></line>
            <line
                    x1="33.86"
                    y1="355.05"
                    x2="38.58"
                    y2="347.35"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 36.22px 351.2px;
            "
                    id="el75dt3dav5wu"
                    class="animable"
            ></line>
            <path
                    d="M37.14,349.66A7.06,7.06,0,0,1,38.47,344c1.26-1.72,8.75-6.91,10.13-4.18C50.12,342.78,43,350.73,37.14,349.66Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 42.908px 344.4px;
            "
                    id="elah41huzwqhh"
                    class="animable"
            ></path>
            <line
                    x1="37.14"
                    y1="349.66"
                    x2="44.33"
                    y2="342.78"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 40.735px 346.22px;
            "
                    id="elp12w3b7lu3"
                    class="animable"
            ></line>
            <line
                    x1="32.05"
                    y1="337.78"
                    x2="36.78"
                    y2="330.08"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 34.415px 333.93px;
            "
                    id="el7y9k70lqp"
                    class="animable"
            ></line>
            <path
                    d="M35.34,332.39a7,7,0,0,1,1.33-5.66c1.26-1.72,8.74-6.91,10.13-4.18C48.31,325.51,41.21,333.46,35.34,332.39Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 41.1049px 327.13px;
            "
                    id="el6z2yk3swwdb"
                    class="animable"
            ></path>
            <line
                    x1="35.34"
                    y1="332.39"
                    x2="42.53"
                    y2="325.52"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 38.935px 328.955px;
            "
                    id="el44qy8uxt8c"
                    class="animable"
            ></line>
            <line
                    x1="29.41"
                    y1="312.47"
                    x2="34.14"
                    y2="304.77"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 31.775px 308.62px;
            "
                    id="elmv4u3yntnrl"
                    class="animable"
            ></line>
            <path
                    d="M32.69,307.08A7,7,0,0,1,34,301.42c1.26-1.73,8.74-6.91,10.13-4.18C45.67,300.2,38.57,308.15,32.69,307.08Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 38.4466px 301.819px;
            "
                    id="el5c7zhvdgrjl"
                    class="animable"
            ></path>
            <line
                    x1="32.69"
                    y1="307.08"
                    x2="39.89"
                    y2="300.21"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 36.29px 303.645px;
            "
                    id="elm1mow629oai"
                    class="animable"
            ></line>
            <path
                    d="M27.39,296.29a7.06,7.06,0,0,1,1.33-5.67c1.27-1.72,8.75-6.91,10.14-4.18C40.37,289.41,33.27,297.35,27.39,296.29Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 33.1612px 291.024px;
            "
                    id="elkouyeytfc4s"
                    class="animable"
            ></path>
            <line
                    x1="27.39"
                    y1="296.29"
                    x2="34.59"
                    y2="289.41"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 30.99px 292.85px;
            "
                    id="eldlzpx7g27ab"
                    class="animable"
            ></line>
            <path
                    d="M27.81,296.58a7,7,0,0,1-5.49-1.91c-1.58-1.44-6-9.43-3.1-10.52C22.33,283,29.49,290.85,27.81,296.58Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 23.1591px 290.324px;
            "
                    id="elzgri3ehswag"
                    class="animable"
            ></path>
            <line
                    x1="27.81"
                    y1="296.58"
                    x2="21.73"
                    y2="288.71"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 24.77px 292.645px;
            "
                    id="els1nxiz7b9e"
                    class="animable"
            ></line>
            <line
                    x1="63.64"
                    y1="315.09"
                    x2="50.02"
                    y2="446.38"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 56.83px 380.735px;
            "
                    id="el3r7buv9zq1t"
                    class="animable"
            ></line>
            <line
                    x1="53.03"
                    y1="421.34"
                    x2="48.3"
                    y2="413.64"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 50.665px 417.49px;
            "
                    id="el4erpmow5l84"
                    class="animable"
            ></line>
            <path
                    d="M49.75,416a7,7,0,0,0-1.34-5.66c-1.26-1.72-8.75-6.91-10.14-4.18C36.77,409.08,43.87,417,49.75,416Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 43.9754px 410.734px;
            "
                    id="el7blcjge7qe3"
                    class="animable"
            ></path>
            <line
                    x1="49.75"
                    y1="415.95"
                    x2="42.96"
                    y2="409.44"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 46.355px 412.695px;
            "
                    id="elar1s1i4kxxv"
                    class="animable"
            ></line>
            <line
                    x1="56.81"
                    y1="384.9"
                    x2="52.09"
                    y2="377.21"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 54.45px 381.055px;
            "
                    id="el85ack2xz46l"
                    class="animable"
            ></line>
            <path
                    d="M53.53,379.52a7,7,0,0,0-1.34-5.67c-1.26-1.72-8.75-6.9-10.14-4.17C40.55,372.64,47.65,380.59,53.53,379.52Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 47.7562px 374.259px;
            "
                    id="elc5hcphjglk5"
                    class="animable"
            ></path>
            <line
                    x1="53.53"
                    y1="379.52"
                    x2="46.74"
                    y2="373"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 50.135px 376.26px;
            "
                    id="el5wl4lkqxruw"
                    class="animable"
            ></line>
            <line
                    x1="55.26"
                    y1="399.83"
                    x2="50.54"
                    y2="392.14"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 52.9px 395.985px;
            "
                    id="el4bewukoww1n"
                    class="animable"
            ></line>
            <path
                    d="M52,394.45a7,7,0,0,0-1.34-5.67c-1.26-1.72-8.75-6.9-10.13-4.17C39,387.58,46.1,395.52,52,394.45Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 46.2274px 389.189px;
            "
                    id="eljfmheq75wqe"
                    class="animable"
            ></path>
            <line
                    x1="51.98"
                    y1="394.45"
                    x2="45.19"
                    y2="387.93"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 48.585px 391.19px;
            "
                    id="el53rzkjt09w2"
                    class="animable"
            ></line>
            <line
                    x1="59.33"
                    y1="360.65"
                    x2="54.6"
                    y2="352.95"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 56.965px 356.8px;
            "
                    id="ela9zce67cc1r"
                    class="animable"
            ></line>
            <path
                    d="M56,355.26a7,7,0,0,0-1.33-5.66c-1.27-1.72-8.75-6.9-10.14-4.18C43.06,348.39,50.17,356.34,56,355.26Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 50.2352px 350.003px;
            "
                    id="elcbeqznpe9pn"
                    class="animable"
            ></path>
            <line
                    x1="56.04"
                    y1="355.26"
                    x2="49.25"
                    y2="348.75"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 52.645px 352.005px;
            "
                    id="el24qol6t7zqe"
                    class="animable"
            ></line>
            <line
                    x1="61.86"
                    y1="336.29"
                    x2="57.13"
                    y2="328.59"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 59.495px 332.44px;
            "
                    id="el12zbnjut3xqm"
                    class="animable"
            ></line>
            <path
                    d="M58.57,330.9a7,7,0,0,0-1.33-5.66c-1.27-1.72-8.75-6.9-10.14-4.17C45.59,324,52.69,332,58.57,330.9Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 52.8001px 325.647px;
            "
                    id="elcscqryw6btu"
                    class="animable"
            ></path>
            <line
                    x1="58.57"
                    y1="330.9"
                    x2="51.78"
                    y2="324.39"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 55.175px 327.645px;
            "
                    id="el1ow4o6pnlav"
                    class="animable"
            ></line>
            <line
                    x1="53.83"
                    y1="412.48"
                    x2="60.04"
                    y2="405.91"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 56.935px 409.195px;
            "
                    id="elppjvvq99pe"
                    class="animable"
            ></line>
            <path
                    d="M58.15,407.88a7,7,0,0,1,2.47-5.27c1.59-1.42,10-5,10.78-2C72.27,403.82,63.68,410.14,58.15,407.88Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 64.8056px 403.902px;
            "
                    id="elj0zlbcwo0cj"
                    class="animable"
            ></path>
            <line
                    x1="58.15"
                    y1="407.88"
                    x2="66.6"
                    y2="402.64"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 62.375px 405.26px;
            "
                    id="elfbjeh16j86t"
                    class="animable"
            ></line>
            <line
                    x1="57.91"
                    y1="373.19"
                    x2="64.11"
                    y2="366.62"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 61.01px 369.905px;
            "
                    id="elia5ix9u1ssr"
                    class="animable"
            ></line>
            <path
                    d="M62.23,368.59a7,7,0,0,1,2.47-5.27c1.59-1.42,10-5,10.77-2C76.34,364.53,67.76,370.85,62.23,368.59Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 68.8807px 364.612px;
            "
                    id="elfy05d2776lw"
                    class="animable"
            ></path>
            <line
                    x1="62.23"
                    y1="368.59"
                    x2="70.68"
                    y2="363.34"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 66.455px 365.965px;
            "
                    id="elzqt9kxii8o"
                    class="animable"
            ></line>
            <line
                    x1="59.7"
                    y1="355.92"
                    x2="65.9"
                    y2="349.36"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 62.8px 352.64px;
            "
                    id="eljs9rclmhboq"
                    class="animable"
            ></line>
            <path
                    d="M64,351.32a7,7,0,0,1,2.47-5.26c1.59-1.43,10-5,10.78-2C78.13,347.26,69.55,353.58,64,351.32Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 70.6564px 347.346px;
            "
                    id="el9wdld9r6xao"
                    class="animable"
            ></path>
            <line
                    x1="64.02"
                    y1="351.32"
                    x2="72.47"
                    y2="346.08"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 68.245px 348.7px;
            "
                    id="elcavdoixid3g"
                    class="animable"
            ></line>
            <line
                    x1="62.32"
                    y1="330.61"
                    x2="68.53"
                    y2="324.05"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 65.425px 327.33px;
            "
                    id="el37euwp0dfvt"
                    class="animable"
            ></line>
            <path
                    d="M66.65,326a7,7,0,0,1,2.46-5.27c1.6-1.42,10-5,10.78-2C80.76,322,72.18,328.27,66.65,326Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 73.3007px 322.025px;
            "
                    id="elyvw6ir09yoa"
                    class="animable"
            ></path>
            <line
                    x1="66.65"
                    y1="326.01"
                    x2="75.1"
                    y2="320.77"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 70.875px 323.39px;
            "
                    id="el9w2dlq6bod"
                    class="animable"
            ></line>
            <path
                    d="M63.68,314.36a7,7,0,0,1,2.47-5.27c1.59-1.43,10-5,10.78-2C77.8,310.3,69.21,316.61,63.68,314.36Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 70.3356px 310.379px;
            "
                    id="elx4aq2z6fl"
                    class="animable"
            ></path>
            <line
                    x1="63.68"
                    y1="314.36"
                    x2="72.13"
                    y2="309.11"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 67.905px 311.735px;
            "
                    id="el9jwm2ztdnuo"
                    class="animable"
            ></line>
            <path
                    d="M64,314.73a7,7,0,0,1-5-3c-1.25-1.74-3.88-10.45-.86-10.93C61.47,300.27,66.85,309.47,64,314.73Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 60.7737px 307.754px;
            "
                    id="elgu3ex5hustf"
                    class="animable"
            ></path>
            <line
                    x1="64.03"
                    y1="314.73"
                    x2="59.7"
                    y2="305.78"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 61.865px 310.255px;
            "
                    id="elnmn6qdmggx"
                    class="animable"
            ></line>
            <line
                    x1="48.03"
                    y1="261.64"
                    x2="48.03"
                    y2="427.65"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 48.03px 344.645px;
            "
                    id="elerfjr2z0wzh"
                    class="animable"
            ></line>
            <line
                    x1="48.16"
                    y1="402.69"
                    x2="42.67"
                    y2="395.52"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 45.415px 399.105px;
            "
                    id="elbglh7ucho"
                    class="animable"
            ></line>
            <path
                    d="M44.34,397.67a7,7,0,0,0-1.91-5.5c-1.44-1.58-9.42-6-10.52-3.1C30.72,392.17,38.6,399.34,44.34,397.67Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 38.0804px 393.013px;
            "
                    id="el158uxg61cps"
                    class="animable"
            ></path>
            <line
                    x1="44.34"
                    y1="397.67"
                    x2="36.91"
                    y2="391.89"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 40.625px 394.78px;
            "
                    id="elxjtpgebzvy"
                    class="animable"
            ></line>
            <line
                    x1="48.16"
                    y1="371.49"
                    x2="42.67"
                    y2="364.32"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 45.415px 367.905px;
            "
                    id="elz819quev01o"
                    class="animable"
            ></line>
            <path
                    d="M44.34,366.47A7,7,0,0,0,42.43,361c-1.44-1.59-9.42-6-10.52-3.11C30.72,361,38.6,368.14,44.34,366.47Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 38.0792px 361.825px;
            "
                    id="el1uevwct6jj8"
                    class="animable"
            ></path>
            <line
                    x1="44.34"
                    y1="366.47"
                    x2="36.91"
                    y2="360.69"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 40.625px 363.58px;
            "
                    id="eljxp4di4er"
                    class="animable"
            ></line>
            <line
                    x1="48.16"
                    y1="334.86"
                    x2="42.67"
                    y2="327.69"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 45.415px 331.275px;
            "
                    id="elebsx55yhp2m"
                    class="animable"
            ></line>
            <path
                    d="M44.34,329.84a7,7,0,0,0-1.91-5.49c-1.44-1.59-9.42-6-10.52-3.11C30.72,324.35,38.6,331.52,44.34,329.84Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 38.08px 325.186px;
            "
                    id="elovz14ztav2q"
                    class="animable"
            ></path>
            <line
                    x1="44.34"
                    y1="329.84"
                    x2="36.91"
                    y2="324.06"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 40.625px 326.95px;
            "
                    id="elk12o33gkx7a"
                    class="animable"
            ></line>
            <line
                    x1="48.16"
                    y1="310.48"
                    x2="42.67"
                    y2="303.31"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 45.415px 306.895px;
            "
                    id="elez7xnqp69o9"
                    class="animable"
            ></line>
            <path
                    d="M44.34,305.46a7,7,0,0,0-1.91-5.5c-1.44-1.58-9.42-6-10.52-3.1C30.72,300,38.6,307.13,44.34,305.46Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 38.0804px 300.803px;
            "
                    id="el5s7ap2re8zq"
                    class="animable"
            ></path>
            <line
                    x1="44.34"
                    y1="305.46"
                    x2="36.91"
                    y2="299.68"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 40.625px 302.57px;
            "
                    id="eltxj4c7ket7b"
                    class="animable"
            ></line>
            <line
                    x1="48.16"
                    y1="285.99"
                    x2="42.67"
                    y2="278.82"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 45.415px 282.405px;
            "
                    id="elgtjwjozm915"
                    class="animable"
            ></line>
            <path
                    d="M44.34,281a7,7,0,0,0-1.91-5.5c-1.44-1.58-9.42-6-10.52-3.1C30.72,275.47,38.6,282.64,44.34,281Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 38.0804px 276.338px;
            "
                    id="elgcpgp4wd8zj"
                    class="animable"
            ></path>
            <line
                    x1="44.34"
                    y1="280.97"
                    x2="36.91"
                    y2="275.19"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 40.625px 278.08px;
            "
                    id="elrd095wa60wg"
                    class="animable"
            ></line>
            <line
                    x1="48.04"
                    y1="412.22"
                    x2="53.54"
                    y2="405.05"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 50.79px 408.635px;
            "
                    id="elce5z5ro3p0b"
                    class="animable"
            ></line>
            <path
                    d="M51.87,407.2a7,7,0,0,1,1.91-5.5c1.44-1.58,9.41-6,10.51-3.11C65.49,401.7,57.6,408.87,51.87,407.2Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 58.1255px 402.54px;
            "
                    id="elnovawin2gm"
                    class="animable"
            ></path>
            <line
                    x1="51.87"
                    y1="407.2"
                    x2="59.73"
                    y2="401.11"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 55.8px 404.155px;
            "
                    id="elsh0kjg4uih8"
                    class="animable"
            ></line>
            <line
                    x1="48.04"
                    y1="362.6"
                    x2="53.54"
                    y2="355.43"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 50.79px 359.015px;
            "
                    id="elbjiwtmaa7ad"
                    class="animable"
            ></line>
            <path
                    d="M51.87,357.58a7,7,0,0,1,1.91-5.5c1.44-1.58,9.41-6,10.51-3.11C65.49,352.08,57.6,359.25,51.87,357.58Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 58.1255px 352.92px;
            "
                    id="elyhry0w908"
                    class="animable"
            ></path>
            <line
                    x1="51.87"
                    y1="357.58"
                    x2="59.73"
                    y2="351.49"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 55.8px 354.535px;
            "
                    id="elnt8fgczhwk"
                    class="animable"
            ></line>
            <line
                    x1="48.04"
                    y1="338.11"
                    x2="53.54"
                    y2="330.94"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 50.79px 334.525px;
            "
                    id="el64oev4w5x1l"
                    class="animable"
            ></line>
            <path
                    d="M51.87,333.09a7,7,0,0,1,1.91-5.5c1.44-1.58,9.41-6,10.51-3.11C65.49,327.59,57.6,334.76,51.87,333.09Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 58.1255px 328.43px;
            "
                    id="elhw8rpgjyyb"
                    class="animable"
            ></path>
            <line
                    x1="51.87"
                    y1="333.09"
                    x2="59.73"
                    y2="327"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 55.8px 330.045px;
            "
                    id="el9tk883amd1e"
                    class="animable"
            ></line>
            <line
                    x1="48.04"
                    y1="305.74"
                    x2="53.54"
                    y2="298.57"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 50.79px 302.155px;
            "
                    id="elj92u15tpit"
                    class="animable"
            ></line>
            <path
                    d="M51.87,300.72a7,7,0,0,1,1.91-5.5c1.44-1.58,9.41-6,10.51-3.11C65.49,295.22,57.6,302.39,51.87,300.72Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 58.1255px 296.06px;
            "
                    id="elhh1h0x5ynrq"
                    class="animable"
            ></path>
            <line
                    x1="51.87"
                    y1="300.72"
                    x2="59.73"
                    y2="294.63"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 55.8px 297.675px;
            "
                    id="elbj7i92ybilo"
                    class="animable"
            ></line>
            <line
                    x1="48.04"
                    y1="280.29"
                    x2="53.54"
                    y2="273.12"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 2px;
              transform-origin: 50.79px 276.705px;
            "
                    id="els73kkv7fwg"
                    class="animable"
            ></line>
            <path
                    d="M51.87,275.27a7,7,0,0,1,1.91-5.5c1.44-1.58,9.41-6,10.51-3.1C65.49,269.77,57.6,276.94,51.87,275.27Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 58.1255px 270.613px;
            "
                    id="elcx5gvkee404"
                    class="animable"
            ></path>
            <line
                    x1="51.87"
                    y1="275.27"
                    x2="59.73"
                    y2="269.18"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 55.8px 272.225px;
            "
                    id="el7jx5ls1ip57"
                    class="animable"
            ></line>
            <path
                    d="M47.71,264a7,7,0,0,1,1.91-5.49c1.44-1.59,9.42-6,10.52-3.11C61.33,258.49,53.45,265.65,47.71,264Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 53.97px 259.342px;
            "
                    id="eld1xkcpfna8i"
                    class="animable"
            ></path>
            <line
                    x1="47.71"
                    y1="263.98"
                    x2="55.58"
                    y2="257.89"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 51.645px 260.935px;
            "
                    id="elhk1vwm2gw4n"
                    class="animable"
            ></line>
            <path
                    d="M48.1,264.32a7.05,7.05,0,0,1-5.27-2.48c-1.42-1.59-4.94-10-2-10.78C44.06,250.2,50.36,258.79,48.1,264.32Z"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 44.1353px 257.66px;
            "
                    id="ellris1i4xh8"
                    class="animable"
            ></path>
            <line
                    x1="48.1"
                    y1="264.32"
                    x2="42.86"
                    y2="255.86"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              stroke-width: 0.5px;
              transform-origin: 45.48px 260.09px;
            "
                    id="elxfqxd0y8ink"
                    class="animable"
            ></line>
            <polygon
                    points="54.86 470.71 37.28 470.71 35.08 426.31 57.06 426.31 54.86 470.71"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 46.07px 448.51px;
            "
                    id="elkkr7yomc2ho"
                    class="animable"
            ></polygon>
        </g>
        <g
                id="freepik--figure-2--inject-209"
                class="animable"
                style="transform-origin: 267.5px 458.33px"
        >
            <rect
                    x="199"
                    y="445.33"
                    width="137"
                    height="26"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 267.5px 458.33px;
            "
                    id="el0zp42oewdxcd"
                    class="animable"
            ></rect>
            <rect
                    x="204"
                    y="445.33"
                    width="132"
                    height="26"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 270px 458.33px;
            "
                    id="ele117tc55fm7"
                    class="animable"
            ></rect>
        </g>
        <g
                id="freepik--figure-1--inject-209"
                class="animable"
                style="transform-origin: 144.63px 430.08px"
        >
            <polygon
                    points="142 388.83 98.63 420.34 115.19 471.33 168.81 471.33 147.26 388.83 142 388.83"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 133.72px 430.08px;
            "
                    id="el4doldx9etf2"
                    class="animable"
            ></polygon>
            <polygon
                    points="147.26 388.83 103.88 420.34 120.45 471.33 174.06 471.33 190.63 420.34 147.26 388.83"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 147.255px 430.08px;
            "
                    id="elntfaw0ujlmn"
                    class="animable"
            ></polygon>
        </g>
        <g
                id="freepik--Character--inject-209"
                class="animable"
                style="transform-origin: 397.742px 302.393px"
        >
            <path
                    d="M384.75,446s-1.5,6.5-3.25,8.75-9,6.5-18,10c-6.34,2.46-3,4.5-2.25,5,3.84,2.56,17.5,1.25,22.25,1.25h12.75c1.75,0,11-1,8.75-9-3.47-12.33-2.5-13.75-2.5-13.75Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 382.526px 458.668px;
            "
                    id="eln1tke1or5ak"
                    class="animable"
            ></path>
            <path
                    d="M396.25,471c1.56,0,9.09-.8,9.09-6.66a19.17,19.17,0,0,1-4.59,2.16c-3.5,1-5.25.25-23.75,1.5-9,.61-14.25.09-17.22-.61-.38,1.19,1,2.06,1.47,2.36,3.84,2.56,17.5,1.25,22.25,1.25Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 382.527px 467.838px;
            "
                    id="elbfkdgwgbpr"
                    class="animable"
            ></path>
            <path
                    d="M351.76,248.92s10.77,11.11,17,13.54,13.88-12.15,13.88-12.15l-33.33-9Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 365.975px 252.022px;
            "
                    id="el2vr7n5pci35"
                    class="animable"
            ></path>
            <path
                    d="M372.75,284.5s1.5,57.5,3.5,77.25,8.5,73.75,8.5,73.75-4.5,2.5-4.5,4a62.42,62.42,0,0,0,1.25,7s5.75,3.5,10.25,4.5,12.75-1.5,12.75-1.5l.75-9.5-2.5-8,1.75-100,28,107.25s-1.25,3.25-1,4.75,6.25,12.25,6.25,12.25,1-5.75,7.5-5a23,23,0,0,1,10.25,3.5s1.25-9.5,0-12.5S449,429.5,448.75,427s-2-8.5-3-13-5.75-57-6.25-60.5-3.5-45.75-3.5-45.75l1-17.5S395,288,384.5,286s-9.75-2.75-9.75-2.75Z"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 414.403px 369.75px;
            "
                    id="el4qjskqk5oqj"
                    class="animable"
            ></path>
            <path
                    d="M374.3,276.31s-2.22,9.55-.66,11.1,10,5.56,33.09,7.33,32-.44,32.88-3.33-.67-11.77-.67-11.77-33.76.44-48.42-2-13.77-4.44-13.77-4.44Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 406.482px 284.286px;
            "
                    id="eln439lrawrls"
                    class="animable"
            ></path>
            <path
                    d="M418.75,178.2s-27,7.32-29.69,8.78-12.13,69-13.8,75.28-4.18,13.59-.21,16.1,22.79,6.9,36.38,7.74,24.68-.42,27.19-2.09,2.3-1.68,2.71-5,3.35-26.14,3.56-27.19,15.68-49.34,15.68-51.64-19.24-17.78-22.37-19.24S423.56,178.2,418.75,178.2Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 416.749px 232.284px;
            "
                    id="el17lmfxvu7cd"
                    class="animable"
            ></path>
            <path
                    d="M439.87,188.24a20.24,20.24,0,0,0,2.6-4.43,35.08,35.08,0,0,0-4.27-2.89c-3.14-1.46-14.64-2.72-19.45-2.72l-6.89,1.9a83.41,83.41,0,0,0,1.25,14.2c1.46,6.9,1.46,13.8,4.39,12.13S436.11,193.05,439.87,188.24Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 427.165px 192.441px;
            "
                    id="el5mflt7sms0t"
                    class="animable"
            ></path>
            <path
                    d="M419.18,140.66s-7.2,11.25-8.32,13.72-8.1,5.17-6.75,8.1,5.4,3.6,5.4,3.6-1.13,11.7.45,13.5,8.09.9,8.09.9-.45,13-.45,16.64,16.2-8.54,19.13-11.92,1.8-13,1.8-13,8.55-10.8,10.12-15.52-2.7-16.2-15.07-19.8S419.18,140.66,419.18,140.66Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 426.449px 166.841px;
            "
                    id="elvakyy2uxq4s"
                    class="animable"
            ></path>
            <path
                    d="M416.45,155.14c-.24.91-.77,1.55-1.19,1.43s-.57-.93-.33-1.83.78-1.54,1.2-1.43S416.69,154.24,416.45,155.14Z"
                    style="fill: rgb(38, 50, 56); transform-origin: 415.691px 154.941px"
                    id="eltxs1uth012"
                    class="animable"
            ></path>
            <path
                    d="M415.8,150.78s3.83-.9,4.05,2.93"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 417.825px 152.199px;
            "
                    id="elk6wjn2ogu6e"
                    class="animable"
            ></path>
            <path
                    d="M410.63,167.88s2,1.57,7-.9"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 414.13px 167.676px;
            "
                    id="elkod0lzz015"
                    class="animable"
            ></path>
            <path
                    d="M418.05,180.48s6.3.45,9.9-2.93l-9.9,14.85Z"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 423px 184.975px;
            "
                    id="elv1oypq14e5q"
                    class="animable"
            ></path>
            <path
                    d="M431.78,151.68a33.18,33.18,0,0,1-14.4-7c-6.52-5.63-5.17-12.6,1.12-15.08s18.9-.9,26.33,7.88,10.34,13.05,7.42,20.24-11.7,16.65-14.17,16.2-3.38-4.72-3.15-5.85,3.37-5.17,1.12-7-4.27-.45-5.62-2.7S431.78,151.68,431.78,151.68Z"
                    style="
              fill: rgb(38, 50, 56);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 433.23px 151.238px;
            "
                    id="el7c485xgplzi"
                    class="animable"
            ></path>
            <path
                    d="M432,162.25s5.18-6.74,7.43-2.7-.9,7.65-2.7,8.78-6.08,0-6.08,0"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 435.43px 163.546px;
            "
                    id="el00l1mwwvhoaj"
                    class="animable"
            ></path>
            <polygon
                    points="385.84 174.95 381.88 174.95 416.11 258.41 420.06 258.41 385.84 174.95"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 400.97px 216.68px;
            "
                    id="el0jbgvrbknycv"
                    class="animable"
            ></polygon>
            <polygon
                    points="381.88 174.95 326.72 246.32 416.11 258.41 381.88 174.95"
                    style="
              fill: rgb(64, 123, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 371.415px 216.68px;
            "
                    id="elih89hh468wl"
                    class="animable"
            ></polygon>
            <path
                    d="M444,213l.75,25.75S442,236.5,442,237.5a12.47,12.47,0,0,1-.75,3,74.81,74.81,0,0,0-2.5,12.75c-.5,6,.75,7.25,5.5,10.25s14,8.25,17.5,7.75,6.75-2.5,7-10.25-3-14-3-15.5,1.25-8,1-9.25-2.25-4.75-2.25-5.5,1.25-26.5-1.25-30.25S451,193.25,451,193.25"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 453.706px 232.267px;
            "
                    id="eljdn46578qma"
                    class="animable"
            ></path>
            <path
                    d="M413.75,226.75S403,215,401,214.5s-4.75,1-7.25,2.25-2,2.25-2,3A19.39,19.39,0,0,0,392,222s-5,5.75-4.25,6.75,3-.25,3-.25-3.5,3.5-.25,3.5a10.74,10.74,0,0,0,5.5-1.5s-1.25,1.5,1.5,1.5a17.58,17.58,0,0,0,5.75-1.25s3.25,2.75,4.75,3.75,4.25.5,4.25.5,24.75,23,28.5,24,7.25-4.25,7.5-8.75-1.5-7.25-5.5-8.75-27-13-27-13Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 417.973px 236.763px;
            "
                    id="elhgiu0tisl2c"
                    class="animable"
            ></path>
            <line
                    x1="392"
                    y1="222"
                    x2="398.5"
                    y2="218.25"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 395.25px 220.125px;
            "
                    id="el7z05hdiwlvv"
                    class="animable"
            ></line>
            <path
                    d="M390.75,228.5s5.5-4.75,6.25-5.25a51.32,51.32,0,0,1,4.75-2"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 396.25px 224.875px;
            "
                    id="el7tls4bmefd2"
                    class="animable"
            ></path>
            <polyline
                    points="396 230.5 401 227 404.25 226"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 400.125px 228.25px;
            "
                    id="elnl85o4uu5k"
                    class="animable"
            ></polyline>
            <path
                    d="M459.45,251a13.57,13.57,0,0,1,1.8,2.54"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 460.35px 252.27px;
            "
                    id="elytx364jtmn"
                    class="animable"
            ></path>
            <path
                    d="M444.5,241.25a55.1,55.1,0,0,1,11.88,6.83"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 450.44px 244.665px;
            "
                    id="elkrj68q8ri5i"
                    class="animable"
            ></path>
            <path
                    d="M462,241.75a31.12,31.12,0,0,0-14.5-2.5"
                    style="
              fill: none;
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 454.75px 240.464px;
            "
                    id="el40130yytsrf"
                    class="animable"
            ></path>
            <path
                    d="M352.55,210.58a2.61,2.61,0,0,0-2.19-1.48c-1.16-.13-2.41,0-2,1.29.7,2.28,3,8.73,5.37,7.78s-1.17-7.59-1.17-7.59Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 351.414px 213.663px;
            "
                    id="elea62ral0ix"
                    class="animable"
            ></path>
            <path
                    d="M348.58,212.67a2.64,2.64,0,0,0-2.19-1.48c-1.16-.13-2.42,0-2,1.29.7,2.28,3,8.73,5.37,7.79s-1.16-7.6-1.16-7.6Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 347.443px 215.757px;
            "
                    id="ellue4gvzgx0r"
                    class="animable"
            ></path>
            <path
                    d="M344.68,216.51a2.43,2.43,0,0,0-2.08-1c-1,0-2.05.25-1.51,1.3.94,1.86,3.9,7.1,5.73,6.06s-2.14-6.32-2.14-6.32Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 344.123px 219.256px;
            "
                    id="el6q35tvp1w4v"
                    class="animable"
            ></path>
            <path
                    d="M342.09,219.78a2,2,0,0,0-1.69-.85c-.82,0-1.67.2-1.23,1.06.76,1.51,3.17,5.78,4.67,4.93s-1.75-5.14-1.75-5.14Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 341.643px 221.98px;
            "
                    id="elsnj346uagw"
                    class="animable"
            ></path>
            <path
                    d="M437.75,456.25a66.12,66.12,0,0,1,.5,10.5c-.25,5,2.25,8,9,9.25s14.25-2.5,14.5-6.25-7-16-7-16S439.75,442.75,437.75,456.25Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 449.753px 462.885px;
            "
                    id="elqsufm1xx3ia"
                    class="animable"
            ></path>
            <path
                    d="M461.75,469.75a11.93,11.93,0,0,0-1.09-4.35c-.51,2.85-2.77,8.6-10.16,8.6-5.05,0-9.5-2.69-12.09-4.67.67,3.47,3.34,5.65,8.84,6.67C454,477.25,461.5,473.5,461.75,469.75Z"
                    style="
              fill: rgb(255, 255, 255);
              stroke: rgb(38, 50, 56);
              stroke-linecap: round;
              stroke-linejoin: round;
              transform-origin: 450.08px 470.823px;
            "
                    id="el3nga15tcdx"
                    class="animable"
            ></path>
        </g>
        <defs>
            <filter id="active" height="200%">
                <feMorphology
                        in="SourceAlpha"
                        result="DILATED"
                        operator="dilate"
                        radius="2"
                ></feMorphology>
                <feFlood
                        flood-color="#32DFEC"
                        flood-opacity="1"
                        result="PINK"
                ></feFlood>
                <feComposite
                        in="PINK"
                        in2="DILATED"
                        operator="in"
                        result="OUTLINE"
                ></feComposite>
                <feMerge>
                    <feMergeNode in="OUTLINE"></feMergeNode>
                    <feMergeNode in="SourceGraphic"></feMergeNode>
                </feMerge>
            </filter>
            <filter id="hover" height="200%">
                <feMorphology
                        in="SourceAlpha"
                        result="DILATED"
                        operator="dilate"
                        radius="2"
                ></feMorphology>
                <feFlood
                        flood-color="#ff0000"
                        flood-opacity="0.5"
                        result="PINK"
                ></feFlood>
                <feComposite
                        in="PINK"
                        in2="DILATED"
                        operator="in"
                        result="OUTLINE"
                ></feComposite>
                <feMerge>
                    <feMergeNode in="OUTLINE"></feMergeNode>
                    <feMergeNode in="SourceGraphic"></feMergeNode>
                </feMerge>
                <feColorMatrix
                        type="matrix"
                        values="0   0   0   0   0                0   1   0   0   0                0   0   0   0   0                0   0   0   1   0 "
                ></feColorMatrix>
            </filter>
        </defs>
    </svg>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>