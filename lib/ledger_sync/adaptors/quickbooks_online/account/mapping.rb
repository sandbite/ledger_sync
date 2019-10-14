module LedgerSync
  module Adaptors
    module QuickBooksOnline
      module Account
        module Mapping
          ACCOUNT_CLASSIFICATIONS = {
            'asset' => 'Asset',
            'equity' => 'Equity',
            'expense' => 'Expense',
            'liability' => 'Liability',
            'revenue' => 'Revenue'
          }

          ACCOUNT_TYPES = {
            'bank' => 'Bank',
            'other_current_assets' => 'Other Current Asset',
            'fixed_asset' => 'Fixed Asset',
            'other_asset' => 'Other Asset',
            'accounts_receivable' => 'Accounts Receivable',
            'equity' => 'Equity',
            'expense' => 'Expense',
            'other_expense' => 'Other Expense',
            'cost_of_goods_sold' => 'Cost of Goods Sold',
            'accounts_payable' => 'Accounts Payable',
            'credit_card' => 'Credit Card',
            'long_term_liability' => 'Long Term Liability',
            'other_current_liability' => 'Other Current Liability',
            'income' => 'Income',
            'other_income' => 'Other Income'
          }

          ACCOUNT_SUB_TYPES = {
            # Bank
            'cash_on_hand' => 'CashOnHand',
            'checking' => 'Checking',
            'money_market' => 'MoneyMarket',
            'rents_held_in_trust' => 'RentsHeldInTrust',
            'savings' => 'Savings',
            'trust_accounts' => 'TrustAccounts',
            'cash_and_cash_equivalents' => 'CashAndCashEquivalents',
            'other_ear_marked_bank_accounts' => 'OtherEarMarkedBankAccounts',
            # Other Current Asset
            'allowance_for_bad_debts' => 'AllowanceForBadDebts',
            'development_costs' => 'DevelopmentCosts',
            'employee_cash_advances' => 'EmployeeCashAdvances',
            'other_current_assets' => 'OtherCurrentAssets',
            'inventory' => 'Inventory',
            'investment_mortgage_real_estate_loans' => 'Investment_MortgageRealEstateLoans',
            'investment_other' => 'Investment_Other',
            'investment_tax_exempt_securities' => 'Investment_TaxExemptSecurities',
            'investment_us_government_obligations' => 'Investment_USGovernmentObligations',
            'loans_to_officers' => 'LoansToOfficers',
            'loans_to_others' => 'LoansToOthers',
            'loans_to_stockholders' => 'LoansToStockholders',
            'prepaid_expenses' => 'PrepaidExpenses',
            'retainage' => 'Retainage',
            'undeposited_funds' => 'UndepositedFunds',
            'assets_available_for_sale' => 'AssetsAvailableForSale',
            'bal_with_govt_authorities' => 'BalWithGovtAuthorities',
            'called_up_share_capital_not_paid' => 'CalledUpShareCapitalNotPaid',
            'expenditure_authorisations_and_letters_of_credit' => 'ExpenditureAuthorisationsAndLettersOfCredit',
            'global_tax_deferred' => 'GlobalTaxDeferred',
            'global_tax_refund' => 'GlobalTaxRefund',
            'internal_transfers' => 'InternalTransfers',
            'other_consumables' => 'OtherConsumables',
            'provisions_current_assets' => 'ProvisionsCurrentAssets',
            'short_term_investments_in_related_parties' => 'ShortTermInvestmentsInRelatedParties',
            'short_term_loans_and_advances_to_related_parties' => 'ShortTermLoansAndAdvancesToRelatedParties',
            'trade_and_other_receivables' => 'TradeAndOtherReceivables',
            # Fixed Asset
            'accumulated_depletion' => 'AccumulatedDepletion',
            'accumulated_depreciation' => 'AccumulatedDepreciation',
            'depletable_assets' => 'DepletableAssets',
            'fixed_asset_computers' => 'FixedAssetComputers',
            'fixed_asset_copiers' => 'FixedAssetCopiers',
            'fixed_asset_furniture' => 'FixedAssetFurniture',
            'fixed_asset_phone' => 'FixedAssetPhone',
            'fixed_asset_photo_video' => 'FixedAssetPhotoVideo',
            'fixed_asset_software' => 'FixedAssetSoftware',
            'fixed_asset_other_tools_equipment' => 'FixedAssetOtherToolsEquipment',
            'furniture_and_fixtures' => 'FurnitureAndFixtures',
            'land' => 'Land',
            'leasehold_improvements' => 'LeaseholdImprovements',
            'other_fixed_assets' => 'OtherFixedAssets',
            'accumulated_amortization' => 'AccumulatedAmortization',
            'buildings' => 'Buildings',
            'intangible_assets' => 'IntangibleAssets',
            'machinery_and_equipment' => 'MachineryAndEquipment',
            'vehicles' => 'Vehicles',
            'assets_in_course_of_construction' => 'AssetsInCourseOfConstruction',
            'capital_wip' => 'CapitalWip',
            'cumulative_depreciation_on_intangible_assets' => 'CumulativeDepreciationOnIntangibleAssets',
            'intangible_assets_under_development' => 'IntangibleAssetsUnderDevelopment',
            'land_asset' => 'LandAsset',
            'non_current_assets' => 'NonCurrentAssets',
            'participating_interests' => 'ParticipatingInterests',
            'provisions_fixed_assets' => 'ProvisionsFixedAssets',
            # Other Asset
            'lease_buyout' => 'LeaseBuyout',
            'other_long_term_assets' => 'OtherLongTermAssets',
            'security_deposits' => 'SecurityDeposits',
            'accumulated_amortization_of_other_assets' => 'AccumulatedAmortizationOfOtherAssets',
            'goodwill' => 'Goodwill',
            'licenses' => 'Licenses',
            'organizational_costs' => 'OrganizationalCosts',
            'assets_held_for_sale' => 'AssetsHeldForSale',
            'available_for_sale_financial_assets' => 'AvailableForSaleFinancialAssets',
            'deferred_tax' => 'DeferredTax',
            'investments' => 'Investments',
            'long_term_investments' => 'LongTermInvestments',
            'long_term_loans_and_advances_to_related_parties' => 'LongTermLoansAndAdvancesToRelatedParties',
            'other_intangible_assets' => 'OtherIntangibleAssets',
            'other_long_term_investments' => 'OtherLongTermInvestments',
            'other_long_term_loans_and_advances' => 'OtherLongTermLoansAndAdvances',
            'prepayments_and_accrued_income' => 'PrepaymentsAndAccruedIncome',
            'provisions_non_current_assets' => 'ProvisionsNonCurrentAssets',
            'accounts_receivable' => 'AccountsReceivable',
            # Equity
            'opening_balance_equity' => 'OpeningBalanceEquity',
            'partners_equity' => 'PartnersEquity',
            'retained_earnings' => 'RetainedEarnings',
            'accumulated_adjustment' => 'AccumulatedAdjustment',
            'owners_equity' => 'OwnersEquity',
            'paid_in_capital_or_surplus' => 'PaidInCapitalOrSurplus',
            'partner_contributions' => 'PartnerContributions',
            'partner_distributions' => 'PartnerDistributions',
            'preferred_stock' => 'PreferredStock',
            'common_stock' => 'CommonStock',
            'treasury_stock' => 'TreasuryStock',
            'estimated_taxes' => 'EstimatedTaxes',
            'healthcare' => 'Healthcare',
            'personal_income' => 'PersonalIncome',
            'personal_expense' => 'PersonalExpense',
            'accumulated_other_comprehensive_income' => 'AccumulatedOtherComprehensiveIncome',
            'called_up_share_capital' => 'CalledUpShareCapital',
            'capital_reserves' => 'CapitalReserves',
            'dividend_disbursed' => 'DividendDisbursed',
            'equity_in_earnings_of_subsiduaries' => 'EquityInEarningsOfSubsiduaries',
            'investment_grants' => 'InvestmentGrants',
            'money_received_against_share_warrants' => 'MoneyReceivedAgainstShareWarrants',
            'other_free_reserves' => 'OtherFreeReserves',
            'share_application_money_pending_allotment' => 'ShareApplicationMoneyPendingAllotment',
            'share_capital' => 'ShareCapital',
            'funds' => 'Funds',
            # Expense
            'advertising_promotional' => 'AdvertisingPromotional',
            'bad_debts' => 'BadDebts',
            'bank_charges' => 'BankCharges',
            'charitable_contributions' => 'CharitableContributions',
            'entertainment' => 'Entertainment',
            'entertainment_meals' => 'EntertainmentMeals',
            'equipment_rental' => 'EquipmentRental',
            'finance_costs' => 'FinanceCosts',
            'global_tax_expense' => 'GlobalTaxExpense',
            'insurance' => 'Insurance',
            'interest_paid' => 'InterestPaid',
            'legal_professional_fees' => 'LegalProfessionalFees',
            'office_expenses' => 'OfficeExpenses',
            'office_general_administrative_expenses' => 'OfficeGeneralAdministrativeExpenses',
            'other_business_expenses' => 'OtherBusinessExpenses',
            'other_miscellaneous_service_cost' => 'OtherMiscellaneousServiceCost',
            'promotional_meals' => 'PromotionalMeals',
            'rent_or_lease_of_buildings' => 'RentOrLeaseOfBuildings',
            'repair_maintenance' => 'RepairMaintenance',
            'shipping_freight_delivery' => 'ShippingFreightDelivery',
            'supplies_materials' => 'SuppliesMaterials',
            'travel' => 'Travel',
            'travel_meals' => 'TravelMeals',
            'auto' => 'Auto',
            'cost_of_labor' => 'CostOfLabor',
            'dues_subscriptions' => 'DuesSubscriptions',
            'payroll_expenses' => 'PayrollExpenses',
            'taxes_paid' => 'TaxesPaid',
            'unapplied_cash_bill_payment_expense' => 'UnappliedCashBillPaymentExpense',
            'amortization_expense' => 'AmortizationExpense',
            'appropriations_to_depreciation' => 'AppropriationsToDepreciation',
            'borrowing_cost' => 'BorrowingCost',
            'commissions_and_fees' => 'CommissionsAndFees',
            'distribution_costs' => 'DistributionCosts',
            'external_services' => 'ExternalServices',
            'extraordinary_charges' => 'ExtraordinaryCharges',
            'income_tax_expense' => 'IncomeTaxExpense',
            'loss_on_discontinued_operations_net_of_tax' => 'LossOnDiscontinuedOperationsNetOfTax',
            'management_compensation' => 'ManagementCompensation',
            'other_current_operating_charges' => 'OtherCurrentOperatingCharges',
            'other_external_services' => 'OtherExternalServices',
            'other_rental_costs' => 'OtherRentalCosts',
            'other_selling_expenses' => 'OtherSellingExpenses',
            'project_studies_surveys_assessments' => 'ProjectStudiesSurveysAssessments',
            'purchases_rebates' => 'PurchasesRebates',
            'shipping_and_delivery_expense' => 'ShippingAndDeliveryExpense',
            'staff_costs' => 'StaffCosts',
            'sundry' => 'Sundry',
            'travel_expenses_general_and_admin_expenses' => 'TravelExpensesGeneralAndAdminExpenses',
            'travel_expenses_selling_expense' => 'TravelExpensesSellingExpense',
            # Other Expense
            'depreciation' => 'Depreciation',
            'exchange_gain_or_loss' => 'ExchangeGainOrLoss',
            'other_miscellaneous_expense' => 'OtherMiscellaneousExpense',
            'penalties_settlements' => 'PenaltiesSettlements',
            'amortization' => 'Amortization',
            'gas_and_fuel' => 'GasAndFuel',
            'home_office' => 'HomeOffice',
            'home_owner_rental_insurance' => 'HomeOwnerRentalInsurance',
            'other_home_office_expenses' => 'OtherHomeOfficeExpenses',
            'mortgage_interest' => 'MortgageInterest',
            'rent_and_lease' => 'RentAndLease',
            'repairs_and_maintenance' => 'RepairsAndMaintenance',
            'parking_and_tolls' => 'ParkingAndTolls',
            'vehicle' => 'Vehicle',
            'vehicle_insurance' => 'VehicleInsurance',
            'vehicle_lease' => 'VehicleLease',
            'vehicle_loan_interest' => 'VehicleLoanInterest',
            'vehicle_loan' => 'VehicleLoan',
            'vehicle_registration' => 'VehicleRegistration',
            'vehicle_repairs' => 'VehicleRepairs',
            'other_vehicle_expenses' => 'OtherVehicleExpenses',
            'utilities' => 'Utilities',
            'wash_and_road_services' => 'WashAndRoadServices',
            'deferred_tax_expense' => 'DeferredTaxExpense',
            'depletion' => 'Depletion',
            'exceptional_items' => 'ExceptionalItems',
            'extraordinary_items' => 'ExtraordinaryItems',
            'income_tax_other_expense' => 'IncomeTaxOtherExpense',
            'mat_credit' => 'MatCredit',
            'prior_period_items' => 'PriorPeriodItems',
            'tax_roundoff_gain_or_loss' => 'TaxRoundoffGainOrLoss',
            # Cost of Goods Sold
            'equipment_rental_cos' => 'EquipmentRentalCos',
            'other_costs_of_service_cos' => 'OtherCostsOfServiceCos',
            'shipping_freight_delivery_cos' => 'ShippingFreightDeliveryCos',
            'supplies_materials_cogs' => 'SuppliesMaterialsCogs',
            'cost_of_labor_cos' => 'CostOfLaborCos',
            'cost_of_sales' => 'CostOfSales',
            'freight_and_delivery_cost' => 'FreightAndDeliveryCost',
            # Accounts Payable
            'accounts_payable' => 'AccountsPayable',
            'outstanding_dues_micro_small_enterprise' => 'OutstandingDuesMicroSmallEnterprise',
            'outstanding_dues_other_than_micro_small_enterprise' => 'OutstandingDuesOtherThanMicroSmallEnterprise',
            # Credit Card
            'credit_card' => 'CreditCard',
            # Long Term Liability
            'notes_payable' => 'NotesPayable',
            'other_long_term_liabilities' => 'OtherLongTermLiabilities',
            'shareholder_notes_payable' => 'ShareholderNotesPayable',
            'accruals_and_deferred_income' => 'AccrualsAndDeferredIncome',
            'accrued_long_lerm_liabilities' => 'AccruedLongLermLiabilities',
            'accrued_vacation_payable' => 'AccruedVacationPayable',
            'bank_loans' => 'BankLoans',
            'debts_related_to_participating_interests' => 'DebtsRelatedToParticipatingInterests',
            'deferred_tax_liabilities' => 'DeferredTaxLiabilities',
            'government_and_other_public_authorities' => 'GovernmentAndOtherPublicAuthorities',
            'group_and_associates' => 'GroupAndAssociates',
            'liabilities_related_to_assets_held_for_sale' => 'LiabilitiesRelatedToAssetsHeldForSale',
            'long_term_borrowings' => 'LongTermBorrowings',
            'long_term_debit' => 'LongTermDebit',
            'long_term_employee_benefit_obligations' => 'LongTermEmployeeBenefitObligations',
            'obligations_under_finance_leases' => 'ObligationsUnderFinanceLeases',
            'other_long_term_provisions' => 'OtherLongTermProvisions',
            'provision_for_liabilities' => 'ProvisionForLiabilities',
            'provisions_non_current_liabilities' => 'ProvisionsNonCurrentLiabilities',
            'staff_and_related_long_term_liability_accounts' => 'StaffAndRelatedLongTermLiabilityAccounts',
            # Other Current Liability
            'direct_deposit_payable' => 'DirectDepositPayable',
            'line_of_credit' => 'LineOfCredit',
            'loan_payable' => 'LoanPayable',
            'global_tax_payable' => 'GlobalTaxPayable',
            'global_tax_suspense' => 'GlobalTaxSuspense',
            'other_current_liabilities' => 'OtherCurrentLiabilities',
            'payroll_clearing' => 'PayrollClearing',
            'payroll_tax_payable' => 'PayrollTaxPayable',
            'prepaid_expenses_payable' => 'PrepaidExpensesPayable',
            'rents_in_trust_liability' => 'RentsInTrustLiability',
            'trust_accounts_liabilities' => 'TrustAccountsLiabilities',
            'federal_income_tax_payable' => 'FederalIncomeTaxPayable',
            'insurance_payable' => 'InsurancePayable',
            'sales_tax_payable' => 'SalesTaxPayable',
            'state_local_income_tax_payable' => 'StateLocalIncomeTaxPayable',
            'accrued_liabilities' => 'AccruedLiabilities',
            'current_liabilities' => 'CurrentLiabilities',
            'current_portion_employee_benefits_obligations' => 'CurrentPortionEmployeeBenefitsObligations',
            'current_portion_of_obligations_under_finance_leases' => 'CurrentPortionOfObligationsUnderFinanceLeases',
            'current_tax_liability' => 'CurrentTaxLiability',
            'dividends_payable' => 'DividendsPayable',
            'duties_and_taxes' => 'DutiesAndTaxes',
            'interest_payables' => 'InterestPayables',
            'provision_for_warranty_obligations' => 'ProvisionForWarrantyObligations',
            'provisions_current_liabilities' => 'ProvisionsCurrentLiabilities',
            'short_term_borrowings' => 'ShortTermBorrowings',
            'social_security_agencies' => 'SocialSecurityAgencies',
            'staff_and_related_liability_accounts' => 'StaffAndRelatedLiabilityAccounts',
            'sundry_debtors_and_creditors' => 'SundryDebtorsAndCreditors',
            'trade_and_other_payables' => 'TradeAndOtherPayables',
            # Income
            'non_profit_income' => 'NonProfitIncome',
            'other_primary_income' => 'OtherPrimaryIncome',
            'sales_of_product_income' => 'SalesOfProductIncome',
            'service_fee_income' => 'ServiceFeeIncome',
            'discounts_refunds_given' => 'DiscountsRefundsGiven',
            'unapplied_cash_payment_income' => 'UnappliedCashPaymentIncome',
            'cash_receipt_income' => 'CashReceiptIncome',
            'operating_grants' => 'OperatingGrants',
            'other_current_operating_income' => 'OtherCurrentOperatingIncome',
            'own_work_capitalized' => 'OwnWorkCapitalized',
            'revenue_general' => 'RevenueGeneral',
            'sales_retail' => 'SalesRetail',
            'sales_wholesale' => 'SalesWholesale',
            'savings_by_tax_scheme' => 'SavingsByTaxScheme',
            # Other Income
            'dividend_income' => 'DividendIncome',
            'interest_earned' => 'InterestEarned',
            'other_investment_income' => 'OtherInvestmentIncome',
            'other_miscellaneous_income' => 'OtherMiscellaneousIncome',
            'tax_exempt_interest' => 'TaxExemptInterest',
            'gain_loss_on_sale_of_fixed_assets' => 'GainLossOnSaleOfFixedAssets',
            'gain_loss_on_sale_of_investments' => 'GainLossOnSaleOfInvestments',
            'loss_on_disposal_of_assets' => 'LossOnDisposalOfAssets',
            'other_operating_income' => 'OtherOperatingIncome',
            'unrealised_loss_on_securities_net_of_tax' => 'UnrealisedLossOnSecuritiesNetOfTax',
          }
        end
      end
    end
  end
end
