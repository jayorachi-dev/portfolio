CREATE DATABASE drug_verification;
USE drug_verification;

CREATE TABLE drugs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    drug_name VARCHAR(100),
    manufacturer VARCHAR(100),
    unique_code VARCHAR(50) UNIQUE,
    expiry_date DATE,
    is_used TINYINT DEFAULT 0
);

INSERT INTO drugs (drug_name, manufacturer, unique_code, expiry_date, is_used) VALUES
('Paracetamol 500mg', 'HealthPharma Ltd', 'CODE001', '2027-06-10', 0),
('Amoxicillin 250mg', 'MediCare Labs', 'CODE002', '2025-12-30', 0),
('Ibuprofen 200mg', 'Wellness Drugs Inc', 'CODE003', '2026-09-15', 0),
('Ciprofloxacin 500mg', 'GlobalMed Pharma', 'CODE004', '2025-08-01', 0),
('Metformin 500mg', 'LifeCare Ltd', 'CODE005', '2027-01-20', 0),
('Aspirin 75mg', 'PharmaTrust', 'CODE006', '2024-11-11', 0),
('Azithromycin 500mg', 'BioHealth Corp', 'CODE007', '2026-03-25', 0),
('Vitamin C 1000mg', 'NutriLife', 'CODE008', '2028-05-05', 0),
('Artemether/Lumefantrine', 'AntiMal Labs', 'CODE009', '2025-07-19', 0),
('Omeprazole 20mg', 'DigestCare Pharma', 'CODE010', '2026-10-10', 0);
('Diclofenac 50mg', 'PainRelief Pharma', 'CODE011', '2026-04-12', 0),
('Loratadine 10mg', 'AllergyFree Ltd', 'CODE012', '2027-02-28', 0),
('Salbutamol Inhaler', 'RespiraCare', 'CODE013', '2025-09-10', 0),
('Insulin Injection', 'GlucoLife Inc', 'CODE014', '2025-06-18', 0),
('Losartan 50mg', 'CardioHealth', 'CODE015', '2027-08-22', 0),
('Amlodipine 10mg', 'HeartCare Pharma', 'CODE016', '2026-12-05', 0),
('Hydrochlorothiazide 25mg', 'Diuretic Labs', 'CODE017', '2026-03-19', 0),
('Prednisolone 5mg', 'SteroidMed', 'CODE018', '2025-11-30', 0),
('Clotrimazole Cream', 'SkinHealth Ltd', 'CODE019', '2027-01-11', 0),
('Ketoconazole Shampoo', 'Dermacare', 'CODE020', '2026-07-07', 0),

('Ceftriaxone Injection', 'InfectoPharm', 'CODE021', '2025-10-25', 0),
('Doxycycline 100mg', 'Antibiotic Corp', 'CODE022', '2026-05-14', 0),
('Ranitidine 150mg', 'DigestMed', 'CODE023', '2024-09-01', 0),
('Pantoprazole 40mg', 'GutCare Ltd', 'CODE024', '2027-03-03', 0),
('Zinc Tablets', 'NutriHealth', 'CODE025', '2028-06-06', 0),
('Folic Acid 5mg', 'VitaPlus Pharma', 'CODE026', '2027-09-09', 0),
('Calcium Carbonate', 'BoneCare Inc', 'CODE027', '2028-02-14', 0),
('Magnesium Tablets', 'MineralHealth', 'CODE028', '2027-11-23', 0),
('ORS Sachet', 'HydraLife', 'CODE029', '2026-08-17', 0),
('Cough Syrup', 'RespiraMed', 'CODE030', '2025-12-01', 0),

('Codeine Syrup', 'PainAway Ltd', 'CODE031', '2025-07-21', 0),
('Tramadol 50mg', 'NeuroPharma', 'CODE032', '2026-10-10', 0),
('Diazepam 5mg', 'CalmLife Labs', 'CODE033', '2025-05-05', 0),
('Fluconazole 150mg', 'AntiFungal Inc', 'CODE034', '2026-06-30', 0),
('Nystatin Oral Drops', 'FungiCare', 'CODE035', '2027-04-04', 0),
('Enalapril 10mg', 'CardioPlus', 'CODE036', '2026-09-19', 0),
('Warfarin 5mg', 'BloodCare Ltd', 'CODE037', '2025-11-11', 0),
('Heparin Injection', 'ClotStop Pharma', 'CODE038', '2025-08-08', 0),
('Multivitamin Capsules', 'VitaBoost', 'CODE039', '2028-01-01', 0),
('Energy Booster Tonic', 'PowerHealth', 'CODE040', '2027-12-12', 0);