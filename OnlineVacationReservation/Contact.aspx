<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineVacationReservation.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="head pb-5">
        <div class="container py-5">
            <div class="card">
                <div class="card-body">
                    <h1 class="font-weight-light text-center py-3">Contact Us</h1>
                    <h3 class="font-weight-light text-center py-3"> Have any questions? We would love to hear from you!</h3>
                    <br />
                     <br />
                    <br />
                     <br />
                    <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                        <div class="row pt-3 ">
                            <div class="col-lg-1 offset-1 col-md-2 col-sm-2 col-2">

                            </div>
                            <div class="col-lg-10 col-md-9 col-sm-9 col-9">
                                <img  src="Styles/Images/taxi_service.jpg" alt="thumb01" width="300" height="300" />
                                 <br />
                                 <br />
                                <br />
                                 <br />
                                <h2 class="ocontact">Find us at our office</h2>
                                <address>
                                     64 Knutsford Boulevard, Kingston 5<br />
                                     Kingston 6<br />
                                     <abbr title="Phone">Tel:</abbr>
                                         (876) 457-2545
                                </address>
                                <address>
                                    <strong>Support:</strong>   <a href="mailto:Support@lexistaxi.com">Support@jamaica.touristboard.com</a><br />
                                     
                                </address>
                               
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                        <formview>
                            <div class="form-row">
                                <div class="form-group col-lg-5 col-md-12 col-sm-12 col-12">
                                    <label style="font-size:larger"> First Name</label>
                                    <input type="text" class="form-control" placeholder="First Name" />
                                </div>
                                <div class="form-group col-lg-5 col-md-12 col-sm-12 col-12">
                                    <label style="font-size:larger"> Last Name</label>
                                    <input type="text" class="form-control" placeholder="Last Name" />
                                </div>
                                <div class="form-group col-lg-5 col-md-12 col-sm-12 col-12">
                                    <label style="font-size:larger">Phone Number</label>
                                    <input type="number" class="form-control" placeholder="(876)000-0000" />
                                </div>
                                <div class="form-group col-lg-5 col-md-12 col-sm-12 col-12">
                                    <label style="font-size:larger">Email</label>
                                    <input type="email" placeholder="email@gmail.com" class="form-control" />
                                </div>
                                <div class="form-group col-lg-10 col-md-12 col-sm-12 col-12">
                                    <label style="font-size:larger">Your Message</label>
                                    <textarea class="form-control mb-3" placeholder="Message" id="" rows="5"></textarea>
                                    <br />
                                    <button class="btu btu-primary float-right"> Send</button>
                             </div>
                          </div>
                        </formview>
                    </div>
                </div>
                 </div>
            </div>
        </div>
         </section> 
     
</asp:Content>
