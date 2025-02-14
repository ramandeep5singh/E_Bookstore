<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>
<%
    String type = request.getParameter("type");
%>
<%  if(session.getAttribute("name")==null){ %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv='cache-control' content='no-cache'>
        <meta http-equiv='expires' content='0'>
        <meta http-equiv='pragma' content='no-cache'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="assets/css/loginPage.css">
        <title>E_BookStore</title>
    </head>
    <script src="assets/js/credentials.js"></script>
    <script>
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, window.location.href );
        }
    </script>
    <body>
        <div class="logo position-fixed">
            <h1>E_BookStore&nbsp
                <% if(type!=null){ %>
                    (ADMIN)
                <% } %>
            </h1>
        </div>
        <section class="login-card d-flex justify-content-center">
            <div class="card position-relative">
                <h3>Login&nbsp
                    <% if(type!=null){ %>
                        (ADMIN)
                    <% } %>
                </h3>
                <div id="customer-login" class="login position-absolute">
                    <%  if(type==null){ %>
                        <form class="position-relative" action="login" style="height: 100%;" 
                        method="post" onsubmit="return checkCustomerInputs()">
                            <div class="form-input d-flex flex-column justify-content-center">
                                <div style="margin: 2vw 0;" class="d-flex justify-content-center">
                                    <input type="email" name="email" id="email" placeholder="Enter Email Id" onblur="checkLoginInput('21')">&nbsp<i class="fa-solid fa-user" id="customer-icon"></i>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <input type="password" name="password" id="password" placeholder="Enter Password" onblur="checkLoginInput('22')">&nbsp<i class="fa-solid fa-lock" id="c-password-icon"></i>
                                </div>
                            </div>
                            <div class="form-button d-flex justify-content-center position-absolute">
                                <button type="submit">LOGIN</button>
                            </div>
                        </form>
                    <%  } 
                        else if(type.equals("admin")){ %>
                        <form class="position-relative" action="login" style="height: 100%;" 
                        method="post" onsubmit="return checkCustomerInputs()">
                            <div class="form-input d-flex flex-column justify-content-center">
                                <div style="margin: 2vw 0;" class="d-flex justify-content-center">
                                    <input type="text" name="email" id="email" placeholder="Enter Admin ID" onblur="checkLoginInput('21')">&nbsp<i class="fa-solid fa-user" id="customer-icon"></i>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <input type="password" name="password" id="password" placeholder="Enter Admin Password" onblur="checkLoginInput('22')">&nbsp<i class="fa-solid fa-lock" id="c-password-icon"></i>
                                </div>
                            </div>
                            <div class="form-button d-flex justify-content-center position-absolute">
                                <button type="submit">LOGIN</button>
                            </div>
                        </form>
                    <%  } %>
                </div>
            </div>
            <%  if(type==null){ %>
                <div id="new-user?" class="position-absolute" style="bottom: 0;
                width: 30%;
                padding-bottom: 2vw;">
                    <div class="new-user d-flex justify-content-between">
                        <div class="lr-new"></div>
                        <span>New to E_BookStore?</span>
                        <div class="lr-new"></div>
                    </div>
                    <div class="create-account d-flex justify-content-center">
                        <a href="register.jsp">Create your SoftBooks account</a>
                    </div>
                </div>
            <%  } %>
        </section>
    </body>
    <% }
    else{
        response.sendRedirect("index.jsp");
    }
%>