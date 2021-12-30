<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<%@ include file="header.jsp"%>


<div class="content">
        <div class="py-4 px-3 px-md-4">
            <div class="card mb-3 mb-md-4">

                <div class="card-body">
                    <!-- Breadcrumb -->
                    <nav class="d-none d-md-block" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Users</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">User Edit</li>
                        </ol>
                    </nav>
                    <!-- End Breadcrumb -->

                    <div class="mb-3 mb-md-4 d-flex justify-content-between">
                        <div class="h3 mb-0">USER EDIT</div>
                    </div>


                    <!-- Form -->
                    <div>
                        <form>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" value="" id="name" name="name" value="${mvo.m_name }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="name">Password</label>
                                    <input type="text" class="form-control" value="" id="name" name="name" placeholder="New Password">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="email">Password Confirm</label>
                                    <input type="email" class="form-control" value="" id="email" name="email" placeholder="password_confirm">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="password">address</label>
                                    <input type="password" class="form-control" value="" id="password" name="password" placeholder="New Address">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="password_confirm">address</label>
                                    <input type="password" class="form-control" value="" id="password_confirm" name="password_confirm" placeholder="New Address">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="password">Email</label>
                                    <input type="password" class="form-control" value="" id="password" name="password" value="${mvo.m_email }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="password_confirm">Phone</label>
                                    <input type="password" class="form-control" value="" id="password_confirm" name="password_confirm" value="${mvo.m_phone }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="password">jumin</label>
                                    <input type="password" class="form-control" value="" id="password" name="password" value="${mvo.m_idnum1 }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="password_confirm">jumin</label>
                                    <input type="password" class="form-control" value="" id="password_confirm" name="password_confirm" value="${mvo.m_idnum2 }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="password">Image</label>
                                    <input type="password" class="form-control" value="" id="password" name="password" placeholder="New Image">
                                </div>
                            </div>
                            
                            <!-- <div class="custom-control custom-switch mb-2">
                                <input type="checkbox" class="custom-control-input" id="randomPassword">
                                <label class="custom-control-label" for="randomPassword">Set Random Password</label>
                            </div> -->

                            <button type="submit" class="btn btn-primary float-right">Create</button>
                        </form>
                    </div>
                    <!-- End Form -->
                </div>
            </div>


        </div>

       
    
    <%@ include file="footer.jsp"%>