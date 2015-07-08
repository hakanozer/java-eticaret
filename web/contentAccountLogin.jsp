
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<section class="main-container col1-layout">
    <div class="mt-widget-slider">
        <div class="row">
            <div class="mt-preface">
                <div class="main_slide main_slide_inner">
                    <div class="container">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main-breadcrumbs">
        <div class="container">
            <div class="main ">
                <div class="long-box-shadow">
                </div>
            </div>
        </div>
    </div>

    <div class="main-top">
        <div class="container">
            <div class="main">
                <div class="main-inner main-top-inner">
                    <div class="show-grid">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-main">
        <div class="main-content container">
            <div class="main">
                <div class="main-inner main-content-inner">
                    <div class="show-grid">
                        <div class="col-main">
                            <div class="account-login">
                                <div class="page-title">
                                    <h1>Login or Create an Account</h1>
                                </div>
                                <form action="http://mt-quartz02.magentothemes.net/index.php/customer/account/loginPost/" method="post" id="login-form">
                                    <input name="form_key" type="hidden" value="Clc6unZYU2f5b040">
                                        <div class="col2-set long-box-shadow">
                                            <div class="col-2 registered-users">
                                                <div class="content">
                                                    <h2>Registered Customers</h2>
                                                    <p>If you have an account with us, please log in.</p>
                                                    <ul class="form-list">
                                                        <li>
                                                            <label for="email" class="required"><em>*</em>Email Address</label>
                                                            <div class="input-box">
                                                                <input type="text" name="login[username]" value="" id="email" class="input-text required-entry validate-email" title="Email Address">
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <label for="pass" class="required"><em>*</em>Password</label>
                                                            <div class="input-box">
                                                                <input type="password" name="login[password]" class="input-text required-entry validate-password" id="pass" title="Password">
                                                            </div>
                                                        </li>
                                                    </ul>


                                                    <script type="text/javascript">
                                                        //<![CDATA[
                                                        function toggleRememberMepopup(event) {
                                                            if ($('remember-me-popup')) {
                                                                var viewportHeight = document.viewport.getHeight(),
                                                                        docHeight = $$('body')[0].getHeight(),
                                                                        height = docHeight > viewportHeight ? docHeight : viewportHeight;
                                                                $('remember-me-popup').toggle();
                                                                $('window-overlay').setStyle({height: height + 'px'}).toggle();
                                                            }
                                                            Event.stop(event);
                                                        }

                                                        document.observe("dom:loaded", function () {
                                                            new Insertion.Bottom($$('body')[0], $('window-overlay'));
                                                            new Insertion.Bottom($$('body')[0], $('remember-me-popup'));

                                                            $$('.remember-me-popup-close').each(function (element) {
                                                                Event.observe(element, 'click', toggleRememberMepopup);
                                                            })
                                                            $$('#remember-me-box a').each(function (element) {
                                                                Event.observe(element, 'click', toggleRememberMepopup);
                                                            });
                                                        });
                                                        //]]>
                                                    </script>
                                                    <p class="required">* Required Fields</p>
                                                </div>
                                                <div class="buttons-set">
                                                    <a href="accountForgotPass.jsp" class="f-left">Forgot Your Password ?</a>
                                                    <button type="submit" class="button" title="Login" name="send" id="send2"><span><span>Login</span></span></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2-set2 long-box-shadow">
                                            <div class="col-1 new-users">
                                                <div class="content">
                                                    <h2>New Customers</h2>
                                                    <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
                                                </div>
                                                <div class="buttons-set">
                                                    <button type="button" title="Create an Account" class="button" onclick="window.location = 'http://mt-quartz02.magentothemes.net/index.php/customer/account/create/';"><span><span>Create an Account</span></span></button>
                                                </div>
                                            </div>

                                        </div>
                                </form>
                                <script type="text/javascript">
                                    //<![CDATA[
                                    var dataForm = new VarienForm('login-form', true);
                                    //]]>
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <

    <div class="main-bottom">
        <div class="container">
        </div>
    </div>
</section>
</body>
</html>
