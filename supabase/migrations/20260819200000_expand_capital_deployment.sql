-- Expand capital_deployment module with granular concepts for better spaced repetition

INSERT INTO sm_concepts (module, category, subcategory, name, description, difficulty, tags, sort_order) VALUES

-- Tax reality that was a critical section in the syndication deep dive
('capital_deployment', 'Syndication Skills', 'Tax', 'Passive Loss Rules for High-Income W-2 Earners',
 'The pitch: syndication K-1 losses offset your W-2 income. THE TRUTH: as an LP you are a passive investor by IRS definition. Passive losses can ONLY offset passive income. At $2M+ AGI the $25K active participation exception is fully phased out. Full-time physicians will NEVER qualify as Real Estate Professionals (requires 750+ hrs/yr in RE, more than any other activity). Year 1 K-1 loss from cost segregation is SUSPENDED, carries forward, offsets future passive income or releases on property sale. Tax benefit is real but DELAYED. Do NOT invest primarily for the write-off — invest for RETURNS.',
 4, ARRAY['passive loss','K-1','suspended losses','RE professional status','cost segregation','W-2'], 17),

-- Asset classes — what to target and avoid
('capital_deployment', 'Syndication Skills', 'Asset Classes', 'RE Syndication Asset Classes',
 'TARGET: Multifamily (most common, value-add model, buy B/C class renovate and raise rents). Medical Office (your unfair advantage, NNN leases, physicians are stickiest tenants, 12-15% IRR lower risk). Self-Storage (recession-resistant, 60-70% NOI margin, low management). Industrial/Warehouse (e-commerce tailwind, long leases). AVOID: Office (secular decline, WFH headwind). Retail unless grocery-anchored. Hotels (too cyclical). Ground-up development (construction risk, no cash flow during build).',
 3, ARRAY['multifamily','medical office','self-storage','industrial','asset class','NNN'], 18),

-- Red flags — walk away signals
('capital_deployment', 'Syndication Skills', 'Risk Management', 'Syndication Red Flags — 10 Walk-Away Signals',
 '(1) Guaranteed returns — nothing in RE is guaranteed. (2) Floating rate debt with no rate cap. (3) GP has zero skin in the game. (4) Exit cap rate lower than entry (betting on compression). (5) Projected rent growth > 5%/yr. (6) No full-cycle track record (first-time sponsors). (7) Reluctance to share financial reports or investor references. (8) Pressure to invest quickly (deal closes in 48 hours). (9) Complex fee structures hiding GP compensation. (10) Single-asset concentration ($500K in one deal). Always diversify across sponsors, markets, and asset classes.',
 3, ARRAY['red flags','risk','floating rate','cap rate compression','diversification'], 19),

-- The actual deal math for SBA acquisition
('capital_deployment', 'Business Acquisition', 'Deal Math', 'SBA Acquisition Deal Math',
 'Example: HVAC company with $1.5M revenue, $270K EBITDA. Valued at 3.5x = $945K purchase price. SBA 7(a) loan: 90% = $850K at Prime+2.75% for 10 years. Your equity injection: 10% = $94.5K. Annual debt service: ~$120K. EBITDA after debt service: $150K/yr free cash flow. DSCR: $270K / $120K = 2.25x (lender wants >1.25x). Return on YOUR $94.5K: $150K/yr = 159% cash-on-cash Year 1. After 7 years with 5% growth: business worth $1.33M, you own it free and clear. $94.5K becomes $2.2M = 23x return.',
 4, ARRAY['deal math','SBA','DSCR','cash-on-cash','equity injection','debt service'], 20),

-- Roll-up strategy
('capital_deployment', 'Business Acquisition', 'Strategy', 'HVAC Roll-Up Strategy',
 'Buy one HVAC company ($94.5K down via SBA), stabilize with GM, then acquire a plumbing company ($75K down). Combined entity: $2.8M revenue, $500K+ EBITDA, shared dispatch/admin/office. Roll-up creates value through: shared overhead (one office, one admin team, one dispatch), cross-selling (HVAC customer needs plumber and vice versa), multiple expansion (single $270K EBITDA company sells at 3.5x, $500K+ platform sells at 5-6x). Total deployed: $170K. Year 7 value: $5.9M = 35x return. The multiple expansion from platform premium is the real wealth accelerator.',
 4, ARRAY['roll-up','platform premium','multiple expansion','cross-selling','shared overhead'], 21),

-- Medical office NNN — the physician edge
('capital_deployment', 'Syndication Skills', 'Investment Strategy', 'Medical Office NNN — Your Unfair Advantage',
 'You ARE the tenant base. You know which physician groups are expanding, who is creditworthy, who will sign long leases. NNN (triple net) = tenant pays taxes, insurance, and maintenance. Your involvement: 1-2 hrs/wk. Physicians are the stickiest tenants in commercial RE — they build out expensive procedure rooms and never leave. Syndication sponsors: Montecito Medical, Caddis Partners. Or buy direct: $500K buys $2M building at 25% down. Conservative 20% leveraged return. Cost segregation for Year 1 depreciation.',
 3, ARRAY['medical office','NNN','triple net','physician tenants','Montecito','Caddis'], 22),

-- Opportunity cost framework
('capital_deployment', 'Financial Literacy Foundation', 'Decision Framework', 'Opportunity Cost Framework',
 'Dan effective hourly rate: $1.5M / 2,000 hrs = $750/hr. Catherine: $960K / 2,000 = $480/hr. Every hour spent managing a business is an hour NOT spent seeing patients ($750), doing expert witness work ($600-1,200), or with your 4 kids. Any investment must either be: (a) fully manager-run (you are investor only), or (b) so profitable per hour that it beats $750/hr. This eliminates most owner-operator models. An HVAC company netting $250K on 5 hrs/wk = $960/hr — it passes. A QSR franchise netting $75K on 10 hrs/wk = $144/hr — it fails.',
 2, ARRAY['opportunity cost','hourly rate','time value','manager-run','passive'], 23),

-- The 5 non-negotiables from the 7-year plan
('capital_deployment', 'Financial Literacy Foundation', 'Strategy', 'The 5 Non-Negotiables for $20M in 7 Years',
 '(1) CATHERINE PRODUCES: her incentive is the single biggest variable, $200-400K/yr delta. Without it you land at ~$14M. (2) LEVERAGED RE: W-2 savings alone max at ~$14M. Need $4-6M from leveraged appreciation. Deploy $500K Y1, $500K Y3. (3) $25K/MO SPENDING CAP: every $5K/mo over budget costs ~$1.5M at Year 7. AK has no state tax = instant $4-5K/mo raise. (4) BOARD CERT + MED-LEGAL BY YEAR 3: ABNS oral boards unlock $600-1,200/hr expert witness. Route through LLC, Solo 401(k) shelters $69K/yr. (5) TAX OPTIMIZATION: target 27% effective. Each 1% reduction = ~$150K more at Year 7.',
 3, ARRAY['non-negotiables','spending cap','med-legal','board certification','tax optimization'], 24),

-- PSLF completion
('capital_deployment', 'Financial Literacy Foundation', 'Debt Strategy', 'PSLF Completion Strategy',
 'Public Service Loan Forgiveness: ~25 months remaining, $200K in loans. DO NOT ABANDON. Requirements: work for qualifying employer (hospital counts), make 120 qualifying payments under an income-driven repayment plan. The forgiveness is tax-free (unlike IDR forgiveness which is taxable). At $200K forgiven tax-free, this is equivalent to ~$285K pre-tax. Leaving a qualifying employer before 120 payments resets nothing — payments count from any qualifying employer. Ensure new employer (CPGH/Soldotna) qualifies as 501(c)(3) or government. Verify with MOHELA before signing.',
 3, ARRAY['PSLF','student loans','MOHELA','qualifying employer','loan forgiveness'], 25),

-- Income statement deep dive (breaking out from the broad concept)
('capital_deployment', 'Financial Literacy Foundation', 'Accounting', 'EBITDA vs Free Cash Flow',
 'EBITDA (Earnings Before Interest, Taxes, Depreciation, Amortization) is NOT cash flow. It ignores: capital expenditures (new trucks, equipment replacement), working capital changes (AR/AP timing), debt service (principal + interest), owner distributions, one-time items. Free Cash Flow = EBITDA - CapEx - Changes in Working Capital - Taxes. A business can show $270K EBITDA but only $150K free cash flow if it needs $80K/yr in truck replacements and $40K in working capital. Sellers will always quote EBITDA. You need to calculate FCF.',
 3, ARRAY['EBITDA','free cash flow','CapEx','working capital','cash conversion'], 26),

-- Service agreement economics (key to HVAC valuation)
('capital_deployment', 'Business Acquisition', 'Operations', 'Service Agreement Economics',
 'Service agreements (maintenance contracts) are the most valuable asset in an HVAC company. Why: recurring revenue (predictable cash flow), customer retention (>80% renewal = sticky), lead generation (maintenance visits find repair/replacement opportunities), seasonal smoothing (agreements create winter revenue). Valuation impact: a company with 500 active agreements at $200/yr = $100K recurring revenue, valued at 3-5x = $300-500K just for the agreement book. When evaluating an acquisition, count agreements separately. A company with 1,000+ agreements commands premium multiples.',
 3, ARRAY['service agreements','recurring revenue','maintenance contracts','customer retention','HVAC valuation'], 27);
