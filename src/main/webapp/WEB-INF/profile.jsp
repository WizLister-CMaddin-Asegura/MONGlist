<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <%--<link href="../stylesheets/profile.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="../stylesheets/basic.css" rel="stylesheet">--%>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar-profile.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <header id="header">

        <div class="logo">
            <a href="https://bootstrapmade.com/"><img src="https://bootstrapmade.com/wp-content/themes/bmade/assets/img/logo.png" title="Back to BootstrapThemes.io Homepage" /></a>
        </div>
        <!--
        <div class="info">
            <a title="You are currently previewing the Regna Theme" href="https://bootstrapmade.com/regna-bootstrap-onepage-template/">Regna Theme</a>
        </div>
        -->
        <div class="preview-devices">
            <ul>
                <li class="preview-test preview-devices-active" id="preview-test-desktop" title="Preview the  Regna Theme in Desktop Mode"><a href=""><i class="icon-desktop"></i></a></li>
                <!--<li class="preview-test" id="preview-test-tablet" title="Preview the  Regna Theme in Tablet Mode"><a href=""><i class="icon-tablet"></i></a></li>-->
                <li class="preview-test" id="preview-test-mobile" title="Preview the  Regna Theme in Mobile Mode"><a href=""><i class="icon-mobile"></i></a></li>
            </ul>
        </div>

        <div class="navigate">
            <ul>
                <!--<li class="navigate-like"><iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Ffacebook.com%2FBootstrapMade&width=63&layout=button&action=like&size=large&show_faces=false&share=false&height=65&appId=163862247017518" width="63" height="28" style="border:none;overflow:hidden;float: left; padding-top: 7px;" scrolling="no" frameborder="0" allowTransparency="true"></iframe></li> -->
                <li><a href="https://bootstrapmade.com/demo/themes/Regna/" target="_top" title="Hide the demo bar"><i class="icon-exit"></i></a></li>
                <li><a href="https://bootstrapmade.com/regna-bootstrap-onepage-template/" title="Regna Theme Home Page"><i class="icon-home"></i></a></li>
                <li><a class="download" href="https://bootstrapmade.com/regna-bootstrap-onepage-template/#download" title="Download the Regna Theme"><i class="icon-download"></i> <span>Free Download</span></a></li>
                <li><a href="https://bootstrapmade.com/demo/Avilon/" title="Previous Theme: Avilon" target="_top"><i class="icon-left-arrow"></i></a></li>

                <li><a href="https://bootstrapmade.com/demo/Bell/" title="Next Theme: Bell" target="_top"><i class="icon-right-arrow"></i></a></li>
            </ul>
        </div>

    </header>

    <div id="preview">
        <iframe id="preview-frame" class="preview-desktop" src="https://bootstrapmade.com/demo/themes/Regna/" frameborder="0"></iframe>
    </div>
    <!--
    <div class="social-share" title="Like &amp; Share the Regna Theme">
        Like &amp; Share: &nbsp;
        <iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Ffacebook.com%2FBootstrapMade&width=63&layout=button&action=like&size=large&show_faces=false&share=false&height=65&appId=163862247017518" width="63" height="28" style="border:none;overflow:hidden;margin-bottom: -9px;" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
        <a title="Share on Twitter" href="https://twitter.com/intent/tweet?url=https://bootstrapmade.com/regna-bootstrap-onepage-template/&text=Regna+Bootstrap+Theme&via=BootstrapMade" target="_blank"><i class="icon-twitter"></i></a>
        <a title="Share on Facebook" href="https://www.facebook.com/sharer.php?u=https://bootstrapmade.com/regna-bootstrap-onepage-template/"  target="_blank"><i class="icon-facebook"></i></a>
        <a title="Share on Pinterest" href="https://pinterest.com/pin/create/button/?url=https://bootstrapmade.com/regna-bootstrap-onepage-template/&media=https://bootstrapmade.com/wp-content/themefiles/Regna/800.png"  target="_blank"><i class="icon-pinterest-circled"></i></a>
        <a title="Share on Google Plus" href="https://plus.google.com/share?url=https://bootstrapmade.com/regna-bootstrap-onepage-template/" target="_blank"><i class="icon-gplus"></i></a>
        <i class="icon-cancel-circled" title="Close the sharing bar"></i>
    </div>
    -->
    <script src="https://bootstrapmade.com/demo/assets/js/jquery-3.1.0.min.js"></script>
    <script src="https://bootstrapmade.com/demo/assets/js/custom.js"></script>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-55234356-4', 'auto');
        ga('send', 'pageview');
    </script>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title>Attached - Semantic</title>
    <link rel="stylesheet" type="text/css" href="../dist/components/reset.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/site.css">

    <link rel="stylesheet" type="text/css" href="../dist/components/container.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/divider.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/grid.css">

    <link rel="stylesheet" type="text/css" href="../dist/components/header.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/segment.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/table.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/icon.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/menu.css">
    <link rel="stylesheet" type="text/css" href="../dist/components/message.css">

    <style type="text/css">
        h2 {
            margin: 2em 0em;
        }
        .ui.container {
            padding-top: 5em;
            padding-bottom: 5em;
        }
    </style>
    </head>
    <body>

    <div class="ui container">

        <h2 class="ui header">Attached Content</h2>
        <div class="ui three column grid">
            <div class="column">
                <div class="top attached ui segment">
                    Segment 1
                </div>
                <div class="attached ui segment">
                    Segment 2
                </div>
                <div class="attached ui segment">
                    Segment 2
                </div>
                <div class="bottom attached ui segment">
                    Segment 3
                </div>
                <div class="ui segments">
                    <div class="ui segment">
                        <p>Top</p>
                    </div>
                    <div class="ui segments">
                        <div class="ui segment">
                            <p>Nested Top</p>
                        </div>
                        <div class="ui segment">
                            <p>Nested Middle</p>
                        </div>
                        <div class="ui segment">
                            <p>Nested Bottom</p>
                        </div>
                    </div>
                    <div class="ui segment">
                        <p>Middle</p>
                    </div>
                    <div class="ui horizontal segments">
                        <div class="ui segment">
                            <p>Top</p>
                        </div>
                        <div class="ui segment">
                            <p>Middle</p>
                        </div>
                        <div class="ui segment">
                            <p>Bottom</p>
                        </div>
                    </div>
                    <div class="ui segment">
                        <p>Bottom</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <table class="top attached ui basic table">
                    <thead>
                    <th>Header</th>
                    <th>Header</th>
                    <th>Header</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    </tbody>
                </table>
                <table class="attached ui table">
                    <tbody>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    </tbody>
                </table>
                <table class="attached ui celled selectable table">
                    <tbody>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    </tbody>
                </table>
                <table class="bottom attached ui celled table">
                    <thead>
                    <th>Header</th>
                    <th>Header</th>
                    <th>Header</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td>Cell</td>
                        <td>Cell</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="column">
                <div class="top attached ui three item menu">
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                </div>
                <div class="attached ui three item menu">
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                </div>
                <div class="attached ui three item menu">
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                </div>
                <div class="bottom attached ui three item menu">
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                </div>

                <div class="ui top attached tabular menu">
                    <a class="active item">Active Item</a>
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                </div>
                <div class="ui bottom attached segment">
                    Segment
                </div>

                <div class="ui top attached menu">
                    <a class="active item">Active Item</a>
                    <a class="item">Item</a>
                    <a class="item">Item</a>
                </div>
                <div class="ui bottom attached segment">
                    Segment
                </div>

            </div>
        </div>
    </div>

    <div class="ui text container">

        <h2 class="ui header">Header Groups</h2>

        <h4 class="ui top attached block header">
            Top Block Header
        </h4>
        <div class="ui bottom attached segment">
            Segment
        </div>

        <div class="ui section divider"></div>

        <div class="ui top attached segment">
            Segment
        </div>
        <h4 class="ui bottom attached block header">
            Bottom Block Header
        </h4>

        <div class="ui section divider"></div>

        <h4 class="ui top attached block header">
            Top Block Header
        </h4>
        <div class="ui attached segment">
            Segment
        </div>
        <h4 class="ui attached block header">
            Middle Block Header
        </h4>
        <div class="ui attached segment">
            Segment
        </div>
        <h4 class="ui bottom attached block header">
            Bottom Block Header
        </h4>


        <h2 class="ui header">Mixed Attached Content</h2>

        <div class="ui section divider"></div>

        <div class="ui top attached segment">Segment</div>
        <div class="ui attached three item menu">
            <a class="item">Item</a>
            <a class="item">Item</a>
            <a class="item">Item</a>
        </div>
        <div class="ui attached segment">
            1
        </div>
        <div class="ui attached icon info message">
            <i class="help circle icon"></i>
            <div class="content">
                Message
            </div>
        </div>
        <table class="ui bottom attached table">
            <thead>
            <th>Header</th>
            <th>Header</th>
            <th>Header</th>
            </thead>
            <tbody>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            </tbody>
        </table>

        <div class="ui section divider"></div>

        <div class="ui top attached warning icon message">
            <i class="attention icon"></i>
            <div class="content">
                Message
            </div>
        </div>
        <table class="ui attached table">
            <thead>
            <th>Header</th>
            <th>Header</th>
            <th>Header</th>
            </thead>
            <tbody>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            </tbody>
        </table>
        <div class="ui bottom attached three item menu">
            <a class="item">Item</a>
            <a class="item">Item</a>
            <a class="item">Item</a>
        </div>

        <div class="ui section divider"></div>

        <div class="ui top attached three item inverted menu">
            <a class="item">Item</a>
            <a class="item">Item</a>
            <a class="item">Item</a>
        </div>
        <table class="ui attached inverted table">
            <thead>
            <th>Header</th>
            <th>Header</th>
            <th>Header</th>
            </thead>
            <tbody>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            </tbody>
        </table>
        <div class="ui bottom attached inverted segment">
            Segment
        </div>


    </div>

</body>
</html>
