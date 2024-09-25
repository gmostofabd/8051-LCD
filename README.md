# ⚙️ **LCD Interfacing with 8051 Microcontroller**

This repository demonstrates interfacing a **16x2 alphanumeric LCD** with the **8051 Microcontroller** using **Assembly language**. The project is designed to show how to send data from the **8051 microcontroller** to an LCD. It includes **Proteus simulation files** for testing and visualization.

<div style="border: 2px solid #4CAF50; border-radius: 10px; padding: 20px; text-align: center; background-color: #f9f9f9; margin: 20px auto; width: 80%;">

  <p align="center">
    <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_8B_8051_Ckt.png" alt="8051 Microcontroller LCD Interface" width="80%">
    <br>
    <b style="font-size: 1.5em;">Fig-1:</b> 8051 Microcontroller LCD Interface (Schematic Diagram).
  </p>
  
  <p style="font-size: 1em; color: #555;">The figure above shows the circuit schematic for interfacing the **16x2 LCD** with the **AT89C51 Microcontroller**. It includes essential connections for data transfer, control, and power, enabling the display of alphanumeric characters using **8-bit data mode**.</p>

</div>

---

## 🔑 **Keywords**

[**AT89C51 Microcontroller**](https://en.wikipedia.org/wiki/Intel_MCS-51) | [**Assembly Language**](https://en.wikipedia.org/wiki/Assembly_language) | [**Proteus**](https://www.labcenter.com/) | [**16x2 LCD**](https://en.wikipedia.org/wiki/Liquid-crystal_display) | [**LCD Interfacing**](https://en.wikipedia.org/wiki/Liquid-crystal_display)

---

## ⚙️ **Project Overview**

This project demonstrates **LCD interfacing** with the **[AT89C51 Microcontroller](https://www.atmel.com/products/microcontrollers/8051.aspx)**. It is useful for educational purposes and embedded systems applications, allowing the microcontroller to display data on the LCD.

---

## 🔧 **Key Features**

<div align="center">

| Feature                      | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| 📟 **LCD Display**             | Displays data entered or processed by the microcontroller                   |
| 🖥️ **Proteus Simulation**      | Includes a ready-to-use simulation circuit compatible with Proteus 8.9      |
| 💾 **Assembly Programming**    | Optimized assembly code for efficient execution on the AT89C51              |
| 🛠️ **Real Hardware Test**      | Successfully tested on actual hardware for reliable performance             |

</div>

---

## 📦 **What’s Included?**

<div align="center">

| **File**               | **Description**                                                         |
|------------------------|-------------------------------------------------------------------------|
| **Assembly Code**       | The core assembly code for initializing and operating the LCD. (`exampleproject.asm`) |
| **Proteus Simulation**  | Simulation file for testing the LCD interface in Proteus. (`exampleproject.pdsjr`)  |
| **HEX File**            | Compiled HEX file for uploading to the 8051 microcontroller. (`exampleproject.hex`)   |
| **Test Run Image**      | Image showing the test run result.                                      |

</div>

---

## 🖥️ **Installation & Usage**

### Step-by-Step Guide:

1. **Clone this repository**:
   ```bash
   git clone https://github.com/gmostofabd/8051-LCD.git
   ```

2. **Compile the Assembly Code**:
   Open the `AT89C51_LCD_Keypad.asm` file in **MIDE-51** or any compatible IDE, and compile it to generate the **HEX file**.

3. **Simulate in Proteus**:
   Open **Proteus Design Suite**, load the provided simulation file, and run the simulation to observe the interface's functionality.

4. **Program the Microcontroller**:
   For real hardware, upload the **HEX file** to the AT89C51 microcontroller using a compatible programmer.

5. **Test the Circuit**:
   Assemble the hardware based on the provided circuit diagram, power it on, and verify the LCD's functionality.

---

## 🛠️ **Components Used**

| **Component**              | **Description**                                                                                                                                  |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| AT89C51 Microcontroller     | The core of the project, programmed in Assembly language to control the LCD.                                                                    |
| 16x2 LCD                    | Displays the output of the microcontroller in alphanumeric form.                                                                                |
| Crystal Oscillator (11.0592 MHz) | Provides a clock signal to the microcontroller for accurate timing.                                                                          |
| 33pf Capacitors (2x)        | Used with the crystal oscillator to stabilize the clock signal, connected between XTAL1 and XTAL2 of the microcontroller and ground.             |
| 100 Ohm Resistor            | Limits current in the circuit to protect components.                                                                                            |
| 10K Variable Resistor (Potentiometer) | Adjusts the contrast of the LCD, wired between VCC and GND, with the wiper connected to the contrast pin (V0) of the LCD.                  |
| Push-button Switch (Reset)  | Connected to the RST pin of the microcontroller for manual reset, with a pull-down resistor for stability.                                      |
| Jumper Wires                | Connects components as needed.                                                                                                                 |

---

## 🌐 **LCD Display**

A **Liquid Crystal Display (LCD)** provides a useful interface for embedded systems. The **16x2 LCD** displays textual information across two rows, each capable of showing 16 characters, with each character occupying a 5x7 matrix space on the screen.

<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/lcd_models.png" alt="LCD Types" width="70%">
</p>

---

## 🌐 **16×2 LCD Pin Diagram**

<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_Pinout.png" alt="LCD Pinout" width="70%">
</p>

---

## 🌐 **Programming LCD with 8051**

To interface with the **16x2 LCD**, follow these mandatory steps:

1. **Initialization**:
   - Set the LCD to 8-bit mode by sending initialization commands.

2. **Set RS and RW Pins**:
   - **RS**: Set to `0` for commands, `1` for data.
   - **RW**: Set to `0` for writing, `1` for reading (not often used in basic setups).

3. **Send Commands/Data**:
   - Place the command or data in the data register and trigger the **Enable Pin**.

4. **Enable Pulse**:
   - Toggle the **Enable Pin** to send the command/data.

5. **Delay**:
   - Wait briefly after each command/data transfer to allow the LCD to process it.

---

### Assembly Code for 8-Bit Mode LCD Interfacing 

```assembly 
; -----------------------------
; LCD Interfacing in 8-Bit Mode (lcd_8bit.asm)
; -----------------------------

ORG 00H                  ; Set origin to address 00H

MOV SP, #70H             ; Initialize stack pointer at address 70H
MOV PSW, #00H            ; Set program status word to 00H

LCD_IN: 
    MOV A, #38H          ; Initialize LCD for 2 lines, 5x7 matrix
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #0EH          ; Display ON, Cursor ON
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #01H          ; Clear LCD display
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #06H          ; Shift cursor to the right
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #85H          ; Set cursor at line 1, position 1
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'E'          ; Display letter 'E'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'X'          ; Display letter 'X'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'P'          ; Display letter 'P'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #':'          ; Display colon ':'
    LCALL DATAWRT        ; Call data write subroutine
    MOV A, #'0'          ; Display number '0'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'4'          ; Display number '4'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time

    MOV A, #0C3H         ; Set cursor at line 2, position 1
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time

    MOV A, #'8'          ; Display number '8'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #' '          ; Display space
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'B'          ; Display letter 'B'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'i'          ; Display letter 'i'
    LCALL DATAWRT        ; Call data write subroutine
    MOV A, #'t'          ; Display letter 't'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #' '          ; Display space
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'L'          ; Display letter 'L'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'C'          ; Display letter 'C'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'D'          ; Display letter 'D'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    SJMP $               ; Infinite loop

; -----------------------------
; Command Write Subroutine
; -----------------------------
COMNWRT:
    LCALL READY          ; Prepare for sending command to LCD
    MOV P1, A            ; Copy content of register A to port 1
    CLR P3.4             ; Set RS = 0 for command mode
    CLR P3.5             ; Set R/W = 0 for write mode
    SETB P3.6            ; Set E high for pulse
    ACALL DELAY          ; Give LCD some time
    CLR P3.6             ; Set E low for H-to-L pulse
    RET

; -----------------------------
; Data Write Subroutine
; -----------------------------
DATAWRT:
    LCALL READY          ; Prepare for writing data to LCD
    MOV P1, A            ; Copy content of register A to port 1
    SETB P3.4            ; Set RS = 1 for data mode
    CLR P3.5             ; Set R/W = 0 for write mode
    SETB P3.6            ; Set E high for pulse
    ACALL DELAY          ; Give LCD some time
    CLR P3.6             ; Set E low for H-to-L pulse
    RET

; -----------------------------
; Ready Check Subroutine
; -----------------------------
READY:
    SETB P1.7            ; Set P1.7 to indicate readiness
    CLR P3.4             ; Clear RS
    SETB P3.5            ; Set R/W = 1 for read mode

WAIT:
    CLR P3.6             ; Clear E
    ACALL DELAY          ; Wait for delay
    SETB P3.6            ; Set E high
    JB P1.7, WAIT        ; Wait until P1.7 is high (LCD ready)
    RET

; -----------------------------
; Delay Subroutine
; -----------------------------
DELAY:
    MOV R3, #50          ; Set outer loop count (50 or higher for fast CPUs)
HERE2:
    MOV R4, #255         ; Set inner loop count (255)
HERE:
    DJNZ R4, HERE        ; Decrement R4 and repeat until it reaches 0
    DJNZ R3, HERE2       ; Decrement R3 and repeat until it reaches 0
    RET

END                     ; End of program

```
### Code Explanation

- **LCD Initialization**: The `LCD_INIT` procedure sets the LCD in 8-bit mode, turns on the display, and clears it.
- **Command and Data Functions**: `LCD_CMD` sends commands to the LCD, while `LCD_DATA` sends data (characters).
- **String Sending**: The `SEND_STRING` procedure sends a null-terminated string to the LCD for display.
- **Main Program**: The `MAIN` procedure initializes the LCD and sends the string to display.

### Usage

1. **Save the Code**: Copy this code into a file named `lcd.asm`.
2. **Compile**: Use a compatible assembler to compile the code.
3. **Simulate or Upload**: Use Proteus for simulation or upload it to the AT89C51 microcontroller.


## 🌐 **LCD Interfacing with 8051 – Working**

Upon powering the circuit, the **AT89C51 microcontroller** initializes the LCD and sends a message to be displayed. This can be tested through simulation or real hardware.

---

## 📝 **Tasks**

- Verify the connections based on the schematic.
- Modify the code to display different messages.
- Experiment with the contrast and observe its effects.

---

## 🔗 **Resources**

- **8051 Microcontroller Reference**: [Datasheet](https://www.atmel.com/products/microcontrollers/8051.aspx)
- **LCD Datasheet**: [HD44780 LCD Controller](https://www.sparkfun.com/datasheets/LCD/HD44780.pdf)

---

### 🛠️ **Future Work**
- Adding more functionalities such as scrolling text, custom characters, and additional interfacing techniques like 4-bit mode.

---
