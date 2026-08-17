<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
h4.service__title {
    height: 35px;
}
.service-item .service__icon img:nth-of-type(2) {
    position: absolute;
    right: -60px;
    font-size: 140px;
    opacity: 0.1;
    top: 100px;
}
</style>

 <!-- Page Title -->

	    <section class="page-title page-title-layout5">
	      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
	      <div class="container">
	        <div class="row">
	          <div class="col-12">
	            <h1 class="pagetitle__heading"> Services</h1>
	            <nav>
	              <ol class="breadcrumb mb-0">
	                <li class="breadcrumb-item"><a href="/">Home</a></li>
	                <li class="breadcrumb-item active" aria-current="page"> Services</li>
	              </ol>
	            </nav>
	          </div><!-- /.col-12 -->
	        </div><!-- /.row -->
	      </div><!-- /.container -->
	    </section><!-- /.page-title -->

    <!-- ========================
        Services Layout 1
    =========================== -->
    <section class="services-layout1 pt-60">
      <div class="bg-img"></div>
      <div class="container">

        <div class="row justify-content-center">
          <!-- service item #1 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                <img src="/images/services/mf.png" width="80" height="80" />
                <img src="/images/services/mf.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Mutual Funds</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/mutual-fund" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #2 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                 <img src="/images/services/stocks.png" width="80" height="80" />
                <img src="/images/services/stocks.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Stock Broking</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/stock" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #3 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                 <img src="/images/services/save.png" width="80" height="80" />
                <img src="/images/services/save.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Small Savings</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/small-savings" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
			
		<!-- service item #4 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                <img src="/images/services/fixed_deposit.png" width="80" height="80" />
                <img src="/images/services/fixed_deposit.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Fixed Deposits</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/fixed-deposit" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #5 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                 <img src="/images/services/bonds.png" width="80" height="80" />
                <img src="/images/services/bonds.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">RBI Bonds</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/rbi-bonds" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #6 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
               <img src="/images/services/life_insurance.png" width="80" height="80" />
                <img src="/images/services/life_insurance.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Life Insurance</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/life-insurance" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #7 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                <img src="/images/services/insurance.png" width="80" height="80" />
                <img src="/images/services/insurance.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Health Insurance</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/health-insurance" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #8 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                <img src="/images/services/retirement.png" width="80" height="80" />
                <img src="/images/services/retirement.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">National Pension Scheme (NPS)</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/national-pension-scheme" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #9 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                <img src="/images/services/home.png" width="80" height="80" />
                <img src="/images/services/home.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Home and Personal Loan</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/home-and-personal-loans" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->
          
          <!-- service item #10 -->
          <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="service-item">
              <div class="service__icon">
                 <img src="/images/services/tax.png" width="80" height="80" />
                <img src="/images/services/tax.png"  />
              </div><!-- /.service__icon -->
              <div class="service__content">
                <h4 class="service__title">Income Tax Filing</h4>
                <p class="service__desc">Some neurologists receive subspecialty training focusing on a 
                </p>
     
                <a href="/services/income-tax-filing" class="btn btn__secondary btn__outlined btn__rounded">
                  <span>Read More</span>
                  <i class="icon-arrow-right"></i>
                </a>
              </div><!-- /.service__content -->
            </div><!-- /.service-item -->
          </div><!-- /.col-lg-4 -->

        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.Services Layout 1 -->

   