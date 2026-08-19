-- Add capital_deployment module to sm_concepts

-- Step 1: Drop old module check constraint and add new one with capital_deployment
ALTER TABLE sm_concepts DROP CONSTRAINT IF EXISTS sm_concepts_module_check;
ALTER TABLE sm_concepts ADD CONSTRAINT sm_concepts_module_check
    CHECK (module = ANY(ARRAY['ent_business', 'neuro_boards', 'leadership', 'capital_deployment']::text[]));

-- Step 2: Clean up any existing capital_deployment concepts (idempotent)
DELETE FROM sm_concepts WHERE module = 'capital_deployment';

-- Step 3: Insert all 16 concepts across 4 phases
INSERT INTO sm_concepts (module, category, subcategory, name, description, difficulty, tags, sort_order) VALUES

-- Phase 1: Financial Literacy Foundation
('capital_deployment', 'Financial Literacy Foundation', 'Accounting', 'Reading Financial Statements',
 'Fluency in P&L (revenue, COGS, gross margin, SGA, EBITDA, net income), balance sheets (assets, liabilities, equity, working capital), and cash flow statements (operating, investing, financing). Know the difference between EBITDA and actual free cash flow. Understand add-backs and why sellers use them to inflate EBITDA. Resource: Financial Intelligence by Karen Berman.',
 2, ARRAY['P&L','balance sheet','cash flow','EBITDA','free cash flow','add-backs'], 1),

('capital_deployment', 'Financial Literacy Foundation', 'Valuation', 'Business Valuation Basics',
 'How businesses and properties are priced. EBITDA multiples (what 3x vs 7x means and why). Cap rates (NOI / property value). Discounted cash flow (DCF) concept. Comparable transactions (comps) for benchmarking. Revenue multiples vs EBITDA multiples and when each is used. Why a $270K EBITDA company sells for $945K at 3.5x and not $2.7M at 10x. Resource: The Art of Business Valuation by Gregory Caruso.',
 2, ARRAY['EBITDA multiple','cap rate','DCF','comps','valuation'], 2),

('capital_deployment', 'Financial Literacy Foundation', 'Lending', 'SBA 7(a) Loan Mechanics',
 'Your primary leverage tool. 10% minimum equity injection down payment. Rates: Prime + 2.75% variable or fixed. Terms: 10 years for business acquisition, 25 for RE. Personal guarantee required. SBA fee: 2-3.5% of loan amount. Standby seller notes: SBA allows 10-20% but must be on full standby (no payments during SBA term). Lender requirements: DSCR > 1.25x, net worth, business cash flow, industry experience or GM hire plan. Lenders: Live Oak Bank, Ready Capital, Celtic Bank.',
 3, ARRAY['SBA','7(a)','leverage','DSCR','personal guarantee','seller note'], 3),

('capital_deployment', 'Financial Literacy Foundation', 'Tax', 'Tax Strategy for Business Owners',
 'Transitioning from pure W-2 to W-2 + business owner + investor. S-Corp vs LLC vs C-Corp (S-Corp usually right). Pass-through income and self-employment tax. Reasonable compensation rules. Section 179 and bonus depreciation. QBI deduction (20% on qualified business income). Cost segregation for RE. Solo 401(k) and defined benefit plans for LLC income. 1031 exchange basics. Each 1% reduction in effective tax rate = ~$150K more at Year 7. Resource: Tax-Free Wealth by Tom Wheelwright.',
 3, ARRAY['S-Corp','QBI','cost segregation','Solo 401k','1031 exchange','bonus depreciation'], 4),

-- Phase 2: Syndication Skills
('capital_deployment', 'Syndication Skills', 'Legal Documents', 'Reading a PPM',
 'Private Placement Memorandum: 80-150 page legal document for every syndication. Key sections to find: fee structure (acquisition, asset mgmt, disposition, promote), preferred return and waterfall (how profits split), capital call provisions, LP voting rights, key person clause, exit provisions. You do NOT read every word -- you find these 6 sections. Resource: The Hands-Off Investor by Brian Burke, chapters 8-12.',
 3, ARRAY['PPM','waterfall','preferred return','capital calls','LP rights'], 5),

('capital_deployment', 'Syndication Skills', 'Deal Analysis', 'Evaluating a Syndication Deal Deck',
 'Sponsors send 30-50 page deal decks. Quick assessment checklist: market fundamentals (population, job, rent growth), property details (age, condition, units, occupancy), business plan (value-add strategy), entry vs exit cap rate (exit should be >= entry), debt structure (fixed vs floating, LTV, maturity), projected IRR and equity multiple (realistic?), sensitivity analysis (what if rents drop 10%?), sponsor track record (actual vs projected on full-cycle deals). Practice: review 5 decks WITHOUT investing.',
 3, ARRAY['deal deck','cap rate','IRR','equity multiple','sensitivity analysis','value-add'], 6),

('capital_deployment', 'Syndication Skills', 'Due Diligence', 'Vetting a Syndication Sponsor',
 'Sponsor matters more than the deal. 10-point checklist: (1) 5+ full-cycle track record with actuals vs projected, (2) skin in the game (5-10% GP co-invest minimum), (3) fixed-rate debt or rate cap (floating rate killed Tides/Applesway in 2022-2024), (4) fees (1-2% acquisition, 1-2% asset mgmt standard; GP should earn on promote not fees), (5) 6-8% preferred return (cumulative > non-cumulative), (6) waterfall (70/30 or 80/20 LP/GP), (7) market fundamentals, (8) realistic business plan, (9) PPM reviewed by YOUR attorney, (10) monthly/quarterly communication.',
 4, ARRAY['sponsor vetting','track record','skin in the game','debt structure','fees','promote'], 7),

('capital_deployment', 'Syndication Skills', 'Network', 'Investor Communities and Deal Flow',
 'Where to find deals and vet sponsors. Physician communities: Passive Income MD (largest physician RE investor community), White Coat Investor forum, Left Field Investors (LP-focused). Platforms: CrowdStreet (fraud risk -- Nightingale 2023), RealtyMogul, EquityMultiple. Direct sponsors (best deals): Ashcroft Capital, BAM Capital, Spartan Investment Group, Montecito Medical. You qualify as accredited investor ($200K+ income). Start with ONE deal ($50-100K) to learn. Do not invest until you have vetted 3 sponsors and reviewed 5 deals.',
 2, ARRAY['Passive Income MD','deal flow','accredited investor','506(b)','506(c)'], 8),

-- Phase 3: Business Acquisition
('capital_deployment', 'Business Acquisition', 'Financial Diligence', 'Quality of Earnings Analysis',
 'How to verify seller financials are real. QofE is like a financial audit focused on sustainable, recurring EBITDA. Key concepts: adjusted vs reported EBITDA, add-backs (owner salary, one-time expenses, personal expenses through business), normalization (what happens when owner leaves?), customer concentration risk, revenue trend analysis, working capital needs. Hire a QofE firm for any deal ($5-10K, non-negotiable). Resource: Buy Then Build by Walker Deibel.',
 4, ARRAY['QofE','adjusted EBITDA','add-backs','normalization','customer concentration'], 9),

('capital_deployment', 'Business Acquisition', 'Operations', 'HVAC/Trades Business Operations',
 'Key metrics for an HVAC company: revenue per technician ($200-350K healthy), service agreement count and renewal rate (>80% good), average ticket size (install vs repair vs maintenance), tech utilization rate (billable/available hrs, >70%), customer acquisition cost, gross margin by service type, seasonal revenue pattern, truck/equipment age and replacement schedule, callback rate (<5% good). HVAC beats plumbing in Alaska: heating is essential 8 months/year, higher ticket, more recurring revenue from service agreements.',
 3, ARRAY['HVAC','utilization rate','service agreements','revenue per tech','callback rate'], 10),

('capital_deployment', 'Business Acquisition', 'Due Diligence', 'Full Acquisition Diligence Framework',
 'Three-pillar diligence. FINANCIAL: 3 years tax returns + P&L + balance sheet, bank statements (verify revenue matches), AR aging, AP, equipment list with useful life, insurance policies. OPERATIONAL: employee roster (tenure, pay, certs, non-competes), key person dependency, top 20 customers with revenue, vendor relationships, pending lawsuits, software/systems, online reputation. STRATEGIC: why is owner selling (retirement=good, burnout=caution), transition period (6-12 months ideal), competitive landscape, growth opportunities, natural GM candidate among employees.',
 4, ARRAY['due diligence','financial diligence','operational diligence','key person risk'], 11),

('capital_deployment', 'Business Acquisition', 'Negotiation', 'Deal Structuring and Negotiation',
 'Structuring an offer that protects you. LOI (non-binding, outlines price and terms). Asset purchase vs stock purchase (almost always asset). Earnout: tie 10-20% of price to post-close performance. Seller note: seller carries 10-20% showing they believe in business. Non-compete: 3-5 year, 100+ mile. Transition period: seller stays 6-12 months in writing. Rep and warranty insurance for fraud protection. Working capital peg at closing. Hire an M&A attorney who does SMB deals (not your estate attorney).',
 4, ARRAY['LOI','asset purchase','earnout','seller note','non-compete','working capital peg'], 12),

-- Phase 4: Management & Systems
('capital_deployment', 'Management & Systems', 'People', 'Hiring and Managing a GM',
 'The single most important operational skill. The GM hire IS the entire bet. What to look for: 5+ years managing a service business, P&L management experience, comfortable hiring/firing in blue-collar environment, tech-savvy (ServiceTitan), NOT the best technician but the best MANAGER. Compensation: $85-110K base (AK COL adjusted), 10-15% EBITDA bonus above baseline, 5-10% phantom equity vesting over 4 years. Write the GM job description BEFORE you need it.',
 3, ARRAY['general manager','phantom equity','hiring','compensation','blue-collar management'], 13),

('capital_deployment', 'Management & Systems', 'Metrics', 'KPI Dashboards for Service Businesses',
 'Weekly dashboard that tells you everything in 5 minutes. Key metrics: revenue this week vs same week last year, booked vs completed jobs, average ticket size trend, tech utilization rate, service agreement count (net adds), cash balance and AR aging, customer satisfaction/Google review count, employee count and open positions. This is how you run a business on 5 hrs/wk from your phone. Resource: ServiceTitan reporting module.',
 2, ARRAY['KPI','dashboard','utilization','service agreements','AR aging'], 14),

('capital_deployment', 'Management & Systems', 'Technology', 'ServiceTitan / HouseCall Pro Platforms',
 'Dispatch/CRM platforms that run modern trades companies. You do not need to be an expert, but understand: how jobs are dispatched and tracked, invoicing and payment collection, service agreement management, technician performance measurement, reporting/dashboard functionality. ServiceTitan is industry standard for HVAC. Watch 3-4 overview videos on their YouTube channel. This is how your GM runs operations day-to-day.',
 2, ARRAY['ServiceTitan','HouseCall Pro','dispatch','CRM','field service management'], 15),

('capital_deployment', 'Management & Systems', 'Team', 'Building Your Advisory Team',
 'Assemble before you buy. CPA: specializes in service businesses + physician tax planning. M&A Attorney: does small business acquisitions, knows SBA process. SBA Lender: pre-qualified (Live Oak, Ready Capital, Celtic Bank). Business Broker: optional, can source off-market deals. Insurance Broker: commercial GL, workers comp, auto fleet. Mentor: SCORE.org (free) or find an HVAC owner who has been through an acquisition. Identify 1 candidate for each role within 60 days.',
 2, ARRAY['advisory team','CPA','M&A attorney','SBA lender','SCORE','insurance'], 16);
