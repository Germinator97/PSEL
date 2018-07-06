<%-- 
    Document   : modele
    Created on : 14 mai 2018, 22:23:05
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body>
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
                        
          <div class="collection">
    <a href="#!" class="collection-item"><span class="badge">1</span>Alan</a>
    <a href="#!" class="collection-item"><span class="new badge">4</span>Alan</a>
    <a href="#!" class="collection-item">Alan</a>
    <a href="#!" class="collection-item"><span class="badge">14</span>Alan</a>
  </div>
        
        <ul id="dropdown2" class="dropdown-content">
    <li><a href="#!">one<span class="badge">1</span></a></li>
    <li><a href="#!">two<span class="new badge">1</span></a></li>
    <li><a href="#!">three</a></li>
  </ul>
  <a class="btn dropdown-trigger" href="#!" data-target="dropdown2">Dropdown<i class="material-icons right">arrow_drop_down</i></a>
  
  <ul class="collapsible">
  <li>
    <div class="collapsible-header">
      <i class="material-icons">filter_drama</i>
      First
      <span class="new badge">4</span></div>
    <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
  </li>
  <li>
    <div class="collapsible-header">
      <i class="material-icons">place</i>
      Second
      <span class="badge">1</span></div>
    <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
  </li>
</ul>
  
    <div class="row">
    <div class="col s12 m6">
      <div class="card">
        <div class="card-image">
          <img src="images/sample-1.jpg">
          <span class="card-title">Card Title</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
        </div>
      </div>
    </div>
  </div>
  
    <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/office.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
      <p><a href="#">This is a link</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
      <p>Here is some more information about this product that is only revealed once clicked on.</p>
    </div>
  </div>
  
  
  
  <i class="material-icons">add</i>
  
  <i class="large material-icons">insert_chart</i>
  
    <video class="responsive-video" controls>
    <source src="movie.mp4" type="video/mp4">
  </video>
  
  <a class="btn-floating pulse"><i class="material-icons">menu</i></a>
<a class="btn-floating btn-large pulse"><i class="material-icons">cloud</i></a>
<a class="btn-floating btn-large cyan pulse"><i class="material-icons">edit</i></a>


    <table class="striped">
        <thead>
          <tr>
              <th>Name</th>
              <th>Item Name</th>
              <th>Item Price</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>Alvin</td>
            <td>Eclair</td>
            <td>$0.87</td>
          </tr>
          <tr>
            <td>Alan</td>
            <td>Jellybean</td>
            <td>$3.76</td>
          </tr>
          <tr>
            <td>Jonathan</td>
            <td>Lollipop</td>
            <td>$7.00</td>
          </tr>
        </tbody>
      </table>
  
  <!-- Scaled in -->
  <a id="scale-demo" href="#!" class="btn-floating btn-large scale-transition">
    <i class="material-icons">add</i>
  </a>

  <!-- Scaled out -->
  <a id="scale-demo" href="#!" class="btn-floating btn-large scale-transition scale-out">
    <i class="material-icons">add</i>
  </a>
  
  
      <blockquote>
      This is an example quotation that uses the blockquote tag.
    </blockquote>
  
   <p class="flow-text">I am Flow Text</p>
   

   
    <!-- Element Showed -->
  <a id="menu" class="waves-effect waves-light btn btn-floating" ><i class="material-icons">menu</i></a>

  <!-- Tap Target Structure -->
  <div class="tap-target" data-target="menu">
    <div class="tap-target-content">
      <h5>Title</h5>
      <p>A bunch of text</p>
    </div>
  </div>
  
  <!-- Modal Trigger -->
  <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Modal</a>

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Modal Header</h4>
      <p>A bunch of text</p>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
  </div>
  
      <div class="parallax-container">
      <div class="parallax"><img src="images/parallax1.jpg"></div>
    </div>
  
    <div class="row">
    <div class="col s12 m9 l10">
      <div id="introduction" class="section scrollspy">
        <p>Content </p>
      </div>

      <div id="structure" class="section scrollspy">
        <p>Content </p>
      </div>

      <div id="initialization" class="section scrollspy">
        <p>Content </p>
      </div>
    </div>
    <div class="col hide-on-small-only m3 l2">
      <ul class="section table-of-contents">
        <li><a href="#introduction">Introduction</a></li>
        <li><a href="#structure">Structure</a></li>
        <li><a href="#initialization">Intialization</a></li>
      </ul>
    </div>
  </div>
        
  
  <nav> <!-- navbar content here  --> </nav>

  <ul id="slide-out" class="sidenav">
    <li><div class="user-view">
      <div class="background">
        <img src="images/office.jpg">
      </div>
      <a href="#user"><img class="circle" src="images/yuna.jpg"></a>
      <a href="#name"><span class="white-text name">John Doe</span></a>
      <a href="#email"><span class="white-text email">jdandturk@gmail.com</span></a>
    </div></li>
    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
    <li><a href="#!">Second Link</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Subheader</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
  </ul>
  <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
  
  Test 3

Tabs automatically become scrollable when there are too many to fit on screen

TEST 1
 
TEST 2
 
TEST 3
 
TEST 4
 
TEST 5
 
DISABLED TAB
 
TEST 7
 
TEST 8
 
TEST 9
 
DISABLED TAB
 
TEST 11
Test 2




<a onclick="M.toast({html: 'I am a toast'})" class="btn">Toast!</a>

<!-- data-position can be : bottom, top, left, or right -->
  <!-- data-tooltip defines the tooltip text -->
  <a class="btn tooltipped" data-position="bottom" data-tooltip="I am a tooltip">Hover me!</a>
  
   <a class="waves-effect waves-light btn-large" href="#">Wave</a>
   
     <div class="row">
    <div class="col s12">
      <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">textsms</i>
          <input type="text" id="autocomplete-input" class="autocomplete">
          <label for="autocomplete-input">Autocomplete</label>
        </div>
      </div>
    </div>
  </div>
   
   <form action="#">
    <p>
      <label>
        <input type="checkbox" />
        <span>Red</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" checked="checked" />
        <span>Yellow</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" class="filled-in" checked="checked" />
        <span>Filled in</span>
      </label>
    </p>
    <p>
      <label>
        <input id="indeterminate-checkbox" type="checkbox" />
        <span>Indeterminate Style</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" checked="checked" disabled="disabled" />
        <span>Green</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" disabled="disabled" />
        <span>Brown</span>
      </label>
    </p>
  </form>
   
   <div class="chip">
    <img src="images/yuna.jpg" alt="Contact Person">
    Jane Doe
  </div>
   
     <div class="chip">
    Tag
    <i class="close material-icons">close</i>
  </div>
   
     <!-- Default with no input (automatically generated)  -->
  <div class="chips"></div>
  <div class="chips chips-initial"></div>
  <div class="chips chips-placeholder"></div>
  <div class="chips chips-autocomplete"></div>

  <!-- Customizable input  -->
  <div class="chips">
    <input class="custom-class">
  </div>
  
  <input type="text" class="datepicker">
  
  <form action="#">
    <p>
      <label>
        <input name="group1" type="radio" checked />
        <span>Red</span>
      </label>
    </p>
    <p>
      <label>
        <input name="group1" type="radio" />
        <span>Yellow</span>
      </label>
    </p>
    <p>
      <label>
        <input class="with-gap" name="group1" type="radio"  />
        <span>Green</span>
      </label>
    </p>
    <p>
      <label>
        <input name="group1" type="radio" disabled="disabled" />
        <span>Brown</span>
      </label>
    </p>
  </form>
  
  
          <p>
    <label>
      <input class="with-gap" name="group3" type="radio" checked />
      <span>Red</span>
    </label>
  </p>
            
   <!-- Switch -->
  <div class="switch">
    <label>
      Off
      <input type="checkbox">
      <span class="lever"></span>
      On
    </label>
  </div>

  <!-- Disabled Switch -->
  <div class="switch">
    <label>
      Off
      <input disabled type="checkbox">
      <span class="lever"></span>
      On
    </label>
  </div>
  
        
      
    </body>
    
</html>

