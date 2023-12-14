<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@page import="java.util.List"%>
    <%@ page import="com.DAO.UserDAOImpl "%>
    <%@ page import="com.DB.DBConnect"%>
     <%@ page import="com.entity.User"%>
 <!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <title>User history</title>
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
		
<link rel="icon" href="https://cdn-icons-png.flaticon.com/512/6823/6823491.png" sizes="100*100">
   <style>

.container-fluid{
	margin-left:20px;
	}
	
	.card  {
	margin-top:10%;
	}
 
 /* Style the navbar */
     .navbar {
            overflow: hidden;
            background-color: #ffffff;
            margin-top: 20px ;
            font-family: 'Poppins', sans-serif;
        }

        /* Left-aligned label */
        .label {
            float: left;
            font-size: 20px;
            color: rgb(0, 0, 0);
            padding: 4px 86px;
            font-weight: bolder;
             margin-left: 5%;
        }
       

        /* Right-aligned attributes */
        .attributes {
            float: right;
            margin-right: 10%;
        }

        /* Style for attribute links */
        .attributes a {
            font-size: 14px;
            color: #859098;
            font-weight: 500;
            text-align: center;
             padding: 35px 10px;
            text-decoration: none;
            margin-right: 30px;
        }
/* Card animation css */
.container {
  background: #fff;
  margin-top: 5rem;
}
.our-team {
  padding: 0.75rem 0.75rem;
  background: #fff;
   

  border: 0.5px solid red;
  box-shadow: rgba(0, 0, 0, 0.4) 0px 1px 8px 0px,
    rgba(0, 0, 0, 0.5) 0px 1px 15px 0px;
}
.our-team .pic {
  display: inline-block;
  width: 100%;
  height: 100%;
  background: #fff;
  padding: 0.75rem;
  margin-bottom: 1.5rem;
  transition: all 0.5s ease 0s;
}
.our-team:hover .pic {
  
  border-radius: 100%;
}
.pic img {
  width: 100%;
  height: auto;
  border-radius: 50%;
}
.our-team .title {
  display: block;
  font-size: 1.5rem;
  font-weight: 600;
  color: black;
  margin: 0 0 7px 0;
}
.our-team .post {
  display: block;
  font-size: 1rem;
  color: black;
  margin-bottom: 1rem;
}
 

@media only screen and (max-width: 992px) {
  .our-team {
    margin-bottom: 2rem;
  }
}

.col-md-3{
    margin-top: 3%;
}

.title{
  text-align: center;
}
   </style>

   
</head>
<body>

   <div class="navbar">
      <div class="label">Highway Fix it <span style="color:red;"> & Connect</span></div>
      <div class="attributes">
         <a href="admin_index.html">HOME</a>
        <a href="service_admin.html">SERVICES</a>
        <a href="feedback.html">FEEDBACK</a>
        <a href="contact.html">CONTACT</a>
        <a href="adminHome.jsp">ACCOUNT</a>
      </div>
  </div> 
<div class="container-fluid">
<div class="row"> 
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">

     <% 
   UserDAOImpl dao = new UserDAOImpl();
   List<User> list = dao.getAllUsers();
   for(User m : list){
 %>
       <div class="col-md-3 col-sm-6">
         <div class="our-team">
           
           <h4 class="title"><%=m.getName()%></h4>
            <b><hr><hr></b>
           <span class="post">
            <p><b>Email: </b><%=m.getEmail() %></p> <!-- -->
            
            <p><b>Mobile: </b><%=m.getMobile() %></p><!-- -->
           </span> 
         </div> 
      </div> 

      <%
    }
    %>
      </div>
      </div>
   


    

</body>
</html>