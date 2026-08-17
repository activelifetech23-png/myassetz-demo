<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<style>

.breadcrumb li a {
    color: #fff;
}
.breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}
.breadcrumb>li+li:before {
    padding: 0 5px;
    color: #fff !important;
    content: "/\00a0";
}
.panel-title {
    background: #e8e8fb;
    padding: 10px;
    color: #000;
    border: 1px solid #003399;
}
.panel-title>a:hover{
   color:#4c8552;
}
.panel-title>a:active{
   color:#4c8552;
}
.panel-title>a:focus{
   color:#4c8552;
}
.panel-group .panel+.panel {
    margin-top: 15px;
    margin-bottom: 15px;
}
.panel-collapse{
    background: #fff;
    padding: 15px;
    color: #000;
    border-bottom:3px solid #4c8552;
}
.header_color {
    background: #003399  !important;
}
@media only screen and (max-width: 991px){
	.pt-150 {
	    padding-top: 22px !important;
	}
}
.title_header{
    color: #fff !important;
}
.btn-theme-colored2:hover {
    
    background-color:#003399 ;
    border-color: #003399;
}
.text-theme-colored2 {
    color: #003399 !important;
}
</style>


<script>
var arr  = [];
var arr1 = [];
var arr2 = [];
$(document).ready(function(){
	arr.push({question:'Who is an NRI?', answer:'<ul class="text-justify">A person who does NOT satisfy the following conditions is an NRI <li>a) He/she is in India for 182 days or more during the financial year OR</li><li>b)	If he/she is in India for at least 365 days during the 4 years preceding that year AND at least 60 days in that year.</li></ul>'});
	arr.push({question:'Who is a person of Indian origin (PIO)?', answer:'<p class="text-justify">A Person of Indian Origin (PIO) means a foreign citizen (except a national of Pakistan, Afghanistan Bangladesh, China, Iran, Bhutan, Sri Lanka and Nepal) who at any time held an Indian passport.</p><p class="text-justify">OR who or either of their parents/ grand parents/ great grand parents was born and was permanently resident in India as defined in Government of India Act, 1935 and other territories that became part of India thereafter provided neither was at any time a citizen of any of the aforesaid countries (as referred above);</p><p class="text-justify">OR Who is a spouse of a citizen of India or a PIO.</p>'});
	arr.push({question:'What are the different types of rupee accounts that are permitted and can be maintained by NRIs?', answer:'<p class="text-justify">A NRI can maintain three types of rupee accounts in India as mentioned below -</p><ol class="text-justify">	<li>1.	NRE: Non-Resident (External) Rupee Account</li>	<li>2. NRO: Non-Resident (Ordinary) Rupee Account</li>	<li>3.	FCNR- B: Foreign Currency (Non -Resident)</li></ol>'});
	arr.push({question:'What are NRE and NRO accounts?', answer:'<p class="text-justify">Non-Resident (External) Rupee (NRE) Account - NRE is a rupee bank account from which funds are freely repatriable. It can be opened with either funds remitted from abroad or local funds maintained in NRE/ FCNR accounts, which can be remitted abroad. The deposits can be used for all legitimate purposes. The balance in the account is freely repatriable.</p><p class="text-justify">Interest credited to the NRE accounts is exempt from tax in the hands of the NRI.</p><p class="text-justify">Non-Resident Ordinary Rupee (NRO) Account - NRO is a Rupee (INR) bank account and can be opened with funds either remitted from abroad or generated in India. The amounts in such an account generally cannot be repatriable. However, funds in NRO accounts can be remitted abroad subject to/as per various directives in force at the time of repatriation.</p>'});
	arr.push({question:'What is the distinction between NRE and NRO accounts?', answer:'<p class="text-justify">Balances held in NRE accounts can be repatriated abroad freely, while funds in NRO accounts cannot be remitted abroad but have to be used only for local payments in rupees. Funds due to the non-resident accountholder which do not qualify, under the Exchange Control regulations, for remittance outside India are required to be credited to NRO accounts.</p>'});
	arr.push({question:'Which Mutual Fund houses (AMCs) accept investments from NRIs or PIOs?', answer:'<p class="text-justify">All the Asset Management Companies (AMCs) in India don&#39;t allow NRIs especially from US and Canada because of the cumbersome compliance requirements under Foreign Account Tax Compliance Act (FATCA) in these countries. However, following fund houses do accept investments from NRIs from US and Canada. From the following list of asset management companies, some of them may ask for physical declaration from the investors when they invest in their schemes -</p><ol><li>1. Aditya Birla Sun Life Mutual Fund</li><li>2. Axis Mutual Fund</li><li>3. Bajaj Finserv Mutual Fund</li><li>4. Bandhan Mutual Fund</li><li>5. DSP Investment Managers</li><li>6. Edelweiss Asset Management</li><li>7. Groww Mutual Fund</li><li>8. HDFC Mutual Fund</li><li>9. ICICI Prudential Mutual Fund</li><li>10. IIFL Asset Management</li><li>11. ITI Mutual Fund</li><li>12. Kotak Mahindra Mutual Fund</li><li>13. Motilal Oswal Mutual Fund</li><li>14. Nippon India Mutual Fund</li><li>15. PPFAS Mutual Fund</li><li>16. Quant Mutual Fund</li><li>17. SBI Mutual Fund</li><li>18. Sundaram Mutual Fund</li><li>19. Samco Asset Management</li><li>20. UTI Mutual Fund</li><li>21. Whiteoak Mutual Fund</li></ol>'});
	arr.push({question:'Can NRIs from rest of the world (except from US and Canada) invest in Indian Mutual Funds?', answer:'<p class="text-justify">NRIs from other countries can invest in almost all schemes of all asset management companies in India. They are allowed to invest in mutual funds in India on a repatriable or non-repatriable basis subject to regulations prescribed under the Foreign Exchange Management Act (FEMA). For NRIs (not from USA and Canada) the process of investing in Indian mutual funds is same as that of resident individuals.</p>'});
	arr.push({question:'How the dividends and redemption proceeds are paid to NRIs?', answer:'<p class="text-justify">Normally, dividends and redemptions are paid through direct credit to the designated bank account provided by the NRI in the scheme.</p>'});
	arr.push({question:'Is the indexation benefit allowed to NRIs?', answer:'<p class="text-justify">Indexation benefits are not allowed on mutual fund investments for NRIs.</p>'});
	arr.push({question:'What is the taxation of mutual funds for NRIs?', answer:'<p class="text-justify">Mutual funds, whose average equity allocation (i.e. where underlying assets are equity and equity-related securities) is 65% or more, are treated as equity funds from a tax perspective. These include all equity funds and also several hybrid fund categories. Short term capital gains (investment holding period of less than 12 months) in equity funds are taxed at 20%. Long term capital gains (investment holding period of more than 12 months) in equity funds are tax free up to Rs 125,000 in a financial year and taxed at 12.5% thereafter. NRIs are subject to 20% TDS for short term capital gains and 12.5% TDS for long term capital gains. </p>  <p class="text-justify">With regards to Debt funds, short term capital gains (investment holding period of less than 36 months) in non-equity funds are taxed as per the income tax rate of the investor. Long term capital gains (investment holding period of more than 36 months) in non-equity funds are taxed at 20% after allowing for indexation for investments made prior to 1st April 2023. However, following the Amendment to Finance Bill 2023, the indexation benefit on debt mutual funds has been withdrawn. Debt funds will now be taxed at investors tax slab rate. These changes bring taxation of debt and debt oriented mutual funds at par with fixed deposits for investments made from 1st April 2023 onward. NRIs are subject to 30% TDS for short term and long-term capital gains in debt funds. </p><p class="text-justify">Other mutual funds including schemes with equity allocation between 35 - 65% and schemes of asset classes other than equity and debt, e.g. commodities, international etc have long term capital gains taxation holding period of 2 years. Short term capital gains are taxed at investors tax slab rate, while long term capital gains are taxed at 12.5% (no indexation). TDS on short term capital gains is 30%, while that on long term capital gains is 12.5%</p><p class="text-justify">Investments in mutual fund Equity Linked Savings Schemes (ELSS) up to Rs 150,000 in a financial year qualify for deductions under Section 80C of The Income Tax Act 1961.</p>'});
	arr.push({question:'How and when Tax is deducted (TDS) at source in case of NRIs?', answer:'<p class="text-justify">The TDS on capital gains for NRIs varies based on the type of investment as follows:<ul class="list-style" style="list-style-type: disc;padding-left: 15px;"><li><b>Equity Funds:</b></li><ul style="list-style-type: disc;padding-left: 15px;"><li><b>Short-term capital gains </b> (holding period < 1 year) - 20% TDS</li><li><b>Long-term capital gains</b> (holding period &gt; 1 year) - 12.5% TDS </li></ul></ul><ul class="list-style" style="list-style-type: disc;padding-left: 15px;"><li><b>Debt Funds:</b></li><ul style="list-style-type: disc;padding-left: 15px;"><li><b>Short-term and long-term capital gains </b> - 30% TDS</li></ul></ul><ul class="list-style" style="list-style-type: disc;padding-left: 15px;"><li><b>Hybrid Funds (Equity allocation: 35% - 65%) & Other Asset Classes (e.g., Commodities, International Funds, etc.):</b></li><ul style="list-style-type: disc;padding-left: 15px;"><li><b>Short-term capital gains</b> - 30% TDS</li><li><b>Long-term capital gains</b> - 12.5% TDS</li></ul></ul></p>'});
	arr.push({question:'What are Growth and Dividend Options in a Mutual Fund Scheme?', answer:'<p class="text-justify">Growth and Dividend are essentially options of how investors want cash-flows. During the course of a year, a mutual fund scheme may make profits through dividends from shares ownership or interests from bonds owned by the scheme and also through portfolio churn (profit booking by buying and selling shares and bonds). In a growth option the profit is re-invested to generate more returns whereas in dividend option (Known as IDCW - Income distribution cum withdrawal) the profits are distributed to the investors on a regular basis (annual, semi-annual, quarterly, monthly etc.). Dividends are declared on a per unit basis. Capital appreciation is much higher in growth option because investors benefit from compounding over a long investment horizon; NAV in growth options grows much more than dividend option where the NAVs get re-adjusted whenever the scheme declares dividends. However, some investors may need income during the tenure of the investment and dividend option is suitable for such investors.</p><p class="text-justify">Dividend re-investment is another option available to investors. In this option for the dividends instead of being distributed to investors, get re-invested to buy units of the scheme. A dividend re-investment option works very much like a growth option. The major difference between growth and dividend re-investment option is that, in growth option investor gets capital appreciation through growth in NAV, whereas in dividend re-investment option the investor gets capital appreciation through incremental units (the NAVs of dividend and dividend re-investment options are the same). Tax consequences of growth and dividend re-investment option are different.</p>'});
	arr.push({question:'Is mutual fund dividends tax free for NRIs?', answer:'<p class="text-justify">Dividends paid to NRI investors are subject to 20% TDS.</p>'});
	arr.push({question:'When certificate of TDS is issued to NRIs?', answer:' <pd class="text-justify">Like resident individuals, TDS certificates (Form 16A) are issued on a quarterly basis to NRIs and emailed to their registered email ID with the AMC or sent through post. The same can also be viewed online after registering with TRACES (TDS reconciliation Analysis and Correction Enabling System) <a href="https://contents.tdscpc.gov.in/">https://contents.tdscpc.gov.in/</a></p>'});
	arr.push({question:'What are the KYC and FATCA requirements in case of NRIs?', answer:'<p class="text-justify">NRIs will need to submit following documents to the AMC (mutual fund house) or the RTA (Registrar and Transfer Agent) for fulfilling the mutual funds KYC requirements -<ol>  <li>1. Self-attested copy of PAN</li>  <li>2. Self-attested copy of Passport/ PIO Card</li>  <li>3. Address proof (both Indian and Overseas)</li>  <li>4. Passport size photograph</li>  <li>5. Duly filled in KYC Form along with color passport size photograph</li>  <li>6. Additional information required for FATCA (Foreign Account Tax Compliance Act) - Tax number of country of residency (Other than India).</li>  <li>7. Income Slab</li>  <li>8. Occupation</li>  <li>9. Total net worth</li>  <li>10. Declaration, if you are politically exposed or not</li></ol></p>'});
	arr.push({question:'How to get KYC and FATCA requirements fulfilled in India?', answer:'<p class="text-justify">NRIs on a visit to India can simply contact a mutual fund distributor or visit any mutual fund registrar officer with the aforesaid documents and complete the KYC and FATCA process.</p> <p>Documents verification and IPV will be done at the same time and you are good to start investing in mutual funds. IPV or In-person verification is a process wherein an authorized official confirms your presence and verifies the copies of aforesaid documents with the originals in your presence.</p>'});
	arr.push({question:'How to get In-person verification (IPV) done if the NRI is not in India?', answer:'<p class="text-justify">NRIs on a visit to India can simply contact a mutual fund distributor or visit any mutual fund registrar officer with the aforesaid documents and complete the KYC and FATCA process.</p><p>Once IPV and mandatory document verification is completed, you can send the KYC form along with the aforementioned documents to their mutual fund distributor or the fund house (AMC) or the mutual fund R&T agents (CAMS or K-Fintech). On submission, the KYC information will be updated in the system in a few weeks.</p><p>Another way of doing this is to contact AMCs office or a distributor sitting in their respective countries which can initiate IPV of the documents and then those KYC forms and docs can be submitted via AMC houses or R&T Agents.</p><p>The KYC details can be viewed by entering the PAN number here - <a href="https://www.cvlkra.com/">https://www.cvlkra.com/</a> and then clicking on &#39;KYC Inquiry&#39; tab.</p>'});
	arr.push({question:'Can a NRI make a nomination in his investments?', answer:'<p class="text-justify">An NRI can make a resident Indian or NRI/PIO his nominee in the mutual fund schemes in which he has invested. An NRI can also be the nominee for investments made by a local resident Indian individual. Fund houses also allow an NRI to have a joint holding with a resident Indian or another NRI / PIO in a scheme.</p>'});
	arr.push({question:'Can a NRI invest in Mutual Fund Tax Savings Schemes?', answer:'<p class="text-justify">Yes, an NRI/PIO can invest in ELSS (Equity Linked Savings Schemes) of Mutual Funds if he or she is willing to avail tax rebate under Section 80C of The Income Tax Act 1961. Currently the investment limit is Rs. 150,000 (Rupees One Lac Fifty Thousand only) in a financial year.</p>'});
	var query = '';
	
	for(var i=1; i<=arr.length; i++)
	{
		k = i + 10;
		if(i == 1) {
			query += '<div class="panel">';
			query += '<div class="panel-title"> <a class="collapsed" data-parent="#accordion1" data-toggle="collapse" href="#accordion'+k+'" class="active" aria-expanded="true"> <span class="open-sub"></span> <strong>Q. '+arr[i-1].question+'</strong></a> </div>';	
			query += '<div id="accordion'+k+'" class="panel-collapse collapse in" role="tablist" aria-expanded="true">';
			query += '<div class="panel-content">';
			query += arr[i-1].answer;
			query += '</div>';
			query += '</div>';
			query += '</div>';
			query += '</div>';
		}
		else {
			query += '<div class="panel">';
			query += '<div class="panel-title"> <a class="collapsed" data-parent="#accordion1" data-toggle="collapse" href="#accordion'+k+'" class="active" aria-expanded="false"> <span class="open-sub"></span> <strong>Q. '+arr[i-1].question+'</strong></a> </div>';	
			query += '<div id="accordion'+k+'" class="panel-collapse collapse" role="tablist" aria-expanded="false">';
			query += '<div class="panel-content">';
			query += arr[i-1].answer;
			query += '</div>';
			query += '</div>';
			query += '</div>';
			query += '</div>';
		}
								
	}
	
	$("#accordion1").html(query);


	
	
	
});


</script>

  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
        <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-150 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header text-dark">NRI Corner FAQ'S</h2>
              <ol class="breadcrumb text-dark mt-10">
                <li><a href="/" class="title_header text-dark">Home</a></li>
                <li><a href="/" class="title_header text-dark">FAQ's</a></li>
                <li class="active title_header ">NRI Corner FAQ'S</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div id="accordion1" class="panel-group accordion">
            


            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->