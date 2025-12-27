-- =====================================================
-- 1. Create database for factory-related analysis
-- =====================================================

CREATE DATABASE IF NOT EXISTS factory_db;
USE factory_db;

-- Create table to store machine operation logs
-- This table simulates IoT or sensor data from factory machines

CREATE TABLE machine_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    machine_id VARCHAR(10),
    temperature FLOAT,
    pressure FLOAT,
    status VARCHAR(20),
    recorded_at DATETIME
);

-- =====================================================
-- 2. Insert mock machine log data
-- Values represent temperature, pressure, and machine status at specific times
-- =====================================================

INSERT INTO machine_logs (machine_id, temperature, pressure, status, recorded_at) VALUES
('MC-001', 85.5, 120.0, 'Normal', '2023-12-04 08:00:00'),
('MC-002', 92.0, 115.5, 'Warning', '2023-12-04 08:05:00'),
('MC-003', 45.0, 0.0,   'Maintenance', '2023-12-04 08:10:00'),
('MC-001', 88.0, 121.0, 'Normal', '2023-12-04 09:00:00'),
('MC-002', 95.5, 118.0, 'Critical', '2023-12-04 09:05:00'),
('MC-004', 82.0, 110.0, 'Normal', '2023-12-04 09:10:00'),
('MC-002', 98.0, 119.5, 'Critical', '2023-12-04 10:00:00'),
('MC-001', 86.0, 120.5, 'Normal', '2023-12-04 10:05:00');

-- =====================================================
-- 3. Analysis Queries
-- Identify machines operating at high temperature
-- Maintenance status is excluded to avoid false alarms
-- =====================================================

SELECT mach.machine_id , mach.temperature , mach.status
FROM factory_db.machine_logs mach
WHERE mach.temperature > 90  AND mach.status != 'Maintenance'
;
