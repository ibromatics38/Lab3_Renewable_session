# Lab3_Renewable_session

# 🌬️ Wind Turbine Modeling & PMSG Control | Renewable Energy Lab 3

![MATLAB/Simulink](https://img.shields.io/badge/-MATLAB%2FSimulink-0076A8?logo=mathworks&logoColor=white)
![Wind Energy](https://img.shields.io/badge/-Wind%20Energy-4CAF50)
![PMSG](https://img.shields.io/badge/-Permanent%20Magnet%20Synchronous%20Generator-FF5722)

Advanced modeling of **Type 4 wind turbines** with PMSG and back-to-back converters, featuring dynamic control strategies for grid integration. Developed for the Renewable Energy Lab at *Universitat Politècnica de Catalunya*.

---

## 📌 Overview
This repository contains the third assignment report and simulations for a **Type 4 wind turbine system**, focusing on:
- **Wind turbine dynamics** with pitch control and gearbox modeling.
- **Permanent Magnet Synchronous Generator (PMSG)** operation and control.
- **Back-to-back converter** integration for efficient AC/DC/AC power conversion.
- **Grid interaction analysis** under varying wind speeds (5–14 m/s).

Key applications include maximum power extraction, reactive power management, and grid stability enhancement.

---

## 🚀 Key Features
### 1. **Wind Turbine Model**
   - One-mass mechanical transmission:
     \[
     T_t - T'_g = J_{jot} \frac{d\omega_t}{dt}
     \]
   - Load characteristics: \(T_{load1,g} = K_1\omega_g\), \(T_{load2,g} = K_2\omega_g^2\), \(T_{max,g} = \frac{K_{cp}}{N}\omega_t^2\).

### 2. **PMSG Control**
   - **Generator-side control**: Torque (\(T_m^*\)) and reactive power (\(Q_s^*\)) regulation.
   - **Grid-side control**: DC voltage (\(V_{dc}^*\)) and reactive power (\(Q_g^*\)) stabilization.
   - Loss analysis: 352 kW total losses in back-to-back converters.

### 3. **Type 4 Wind Turbine Integration**
   - MPPT-driven torque reference for optimal power extraction.
   - Coordinated control of active/reactive power with 3 ms transient response.
   - Simulated wind speed scenarios (5 m/s → 14 m/s).

---

## 📊 Simulation Highlights
| **Scenario**               | **Key Insight**                                                                 |
|----------------------------|---------------------------------------------------------------------------------|
| **Wind Speed = 5→8 m/s**   | Grid active power: 0.9 MW | Reactive power: 1.2 MW (stable).               |
| **Wind Speed = 5→14 m/s**  | Grid active power: 5 MW | Reactive power transient: 40 kVAR → 1.2 MW.    |
| **Step Change in Torque**  | Active power stabilizes in **3 ms** (adjustable via current loop time constant).|

![Power Coefficient Stability](https://via.placeholder.com/600x200?text=Optimal+Load+Maintains+Constant+Power+Coefficient)  
*Example: Power coefficient (\(C_p\)) remains stable under wind variations (Section 1.9).*

---

## 🛠️ Prerequisites
- **MATLAB/Simulink** for model execution.
- Basic knowledge of PMSG dynamics and AC/DC/AC converters.

---

---

## 📜 Technical Insights
### Wind Speed vs. Power Output
| **Wind Speed** | **Mechanical Power** | **Grid Active Power** | **Reactive Power** |
|----------------|----------------------|-----------------------|--------------------|
| 5→8 m/s        | 0.9 MW               | 0.9 MW                | 1.2 MW            |
| 5→14 m/s       | 5 MW                 | 5 MW                  | 1.2 MW            |

### Loss Breakdown
- **Converter Losses**: 59 kW (machine-side) + 293 kW (grid-side).
- **Efficiency**: 94% (mechanical-to-electrical conversion).

---

## 🌟 Acknowledgments
Supervised by **Prof. Marc Cheah Mañé** (UPC). Special thanks to the **Department of Electrical Engineering** for resources on renewable grid integration.

---

🔗 **Explore the [Full Report](wind_turbine_assignment.pdf) for implementation details!**

---

### ✨ Why This Repository?
- **Industry-Ready Models**: Type 4 turbine with real-world grid compliance.
- **Dynamic Control**: Fast transient response and MPPT optimization.
- **Academic Focus**: Ideal for wind energy researchers and power systems students.

📩 **Contact**: [Your Email] | [LinkedIn Profile]  
💡 **Contribute**: Suggestions and collaborations welcome!

## 📂 Repository Structure
