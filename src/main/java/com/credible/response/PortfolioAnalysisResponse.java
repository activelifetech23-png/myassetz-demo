package com.credible.response;

import com.credible.amfi.response.SchemeAssets;
import com.credible.amfi.response.SchemePortfolioAnalysisResponse;

public class PortfolioAnalysisResponse 
{
	private SchemeAssets schemeAssets;
	private SchemePortfolioAnalysisResponse schemePortfolioAnalysisResponse;
	
	public SchemeAssets getSchemeAssets() {
		return schemeAssets;
	}
	public void setSchemeAssets(SchemeAssets schemeAssets) {
		this.schemeAssets = schemeAssets;
	}
	public SchemePortfolioAnalysisResponse getSchemePortfolioAnalysisResponse() {
		return schemePortfolioAnalysisResponse;
	}
	public void setSchemePortfolioAnalysisResponse(
			SchemePortfolioAnalysisResponse schemePortfolioAnalysisResponse) {
		this.schemePortfolioAnalysisResponse = schemePortfolioAnalysisResponse;
	}
}
