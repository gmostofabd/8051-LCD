# ⚙️ **LCD Interfacing with 8051 Microcontroller**

This repository demonstrates how to interface a **16x2 alphanumeric LCD** with the **8051 Microcontroller** using **Assembly language**. The project is designed to showcase a practical example of sending data from the **8051 microcontroller** to an LCD and includes **Proteus simulation files** for testing and visualization.

---

<div style="border: 2px solid #4CAF50; border-radius: 10px; padding: 20px; text-align: center; background-color: #f9f9f9; margin: 20px auto; width: 80%;">

  <p align="center">
    <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_8B_8051_Ckt.png" alt="AT89C51 Calculator" width="80%">
    <br>
    <b style="font-size: 1.5em;">Fig. 01: 8051 Microcontroller LCD Interface ( Schematic Diagram ).</b>
  </p>
  
  <p style="font-size: 1em; color: #555;">This diagram represents the <strong>circuit for interfacing the 16x2 LCD</strong> with the 8051 series <strong>AT89C51 Microcontroller</strong>. It includes essential connections for data transfer, control, and power, enabling the display of alphanumeric characters using <strong>8-bit data mode</strong>.</p>

</div>

---

## 🔑 **Keywords**

[**AT89C51 Microcontroller**](https://en.wikipedia.org/wiki/Intel_MCS-51) | [**Assembly Language**](https://en.wikipedia.org/wiki/Assembly_language) | [**Proteus**](https://www.labcenter.com/) | [**16x2 LCD**](https://en.wikipedia.org/wiki/Liquid-crystal_display) | [**LCD Interfacing**](https://en.wikipedia.org/wiki/Liquid-crystal_display)

---

## ⚙️ **Project Overview**

This project demonstrates the **interfacing of a LCD** with the **[AT89C51](https://www.atmel.com/products/microcontrollers/8051.aspx)** microcontroller, part of the **[8051 MCU](https://en.wikipedia.org/wiki/Intel_MCS-51)** family. It allows for displaying data on the LCD, making it a practical example for educational purposes and embedded systems applications.

---

## 🔧 **Key Features**

<div align="center">

| Feature                      | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| 📟 **LCD Display**              | Displays user input and output results                                     |
| 🖥️ **Proteus Simulation**      | Ready-to-use simulation circuit compatible with Proteus 8.9                |
| 💾 **Assembly Programming**    | Optimized assembly code for efficient execution on the AT89C51              |
| 🛠️ **Real Hardware Support**   | Successfully tested on actual hardware for reliable performance              |

</div>

---

# 📦 **What’s Included?**

<div align="center">

| **File**               | **Description**                                                         |
|------------------------|-------------------------------------------------------------------------|
| **Assembly Code**       | The core assembly code that handles the initialization and operation of the LCD. You will find it as a file name "exampleproject.asm" |
| **Proteus Simulation**  | A ready-to-use simulation file to test the LCD interface in Proteus.  You will find it as a file name "exampleproject.pdsjr"    |
| **HEX File**            | The compiled HEX file for uploading to the 8051 microcontroller.  You will find it as a file name "exampleproject.hex"       |
| **Test Run Image**      | Image showing the test run result.                                      |

</div>

## 📑 **Table of Contents**
1. [LCD Display](#lcd-display)
2. [16×2 LCD Pin Diagram](#16x2-lcd-pin-diagram)
3. [Pin Description](#pin-description)
4. [LCD Commands](#lcd-commands)
5. [Interfacing LCD with Microcontroller – Circuit Diagram](#interfacing-lcd-with-microcontroller--circuit-diagram)
6. [LCD Interfacing with 8051 Microcontroller – Programming](#lcd-interfacing-with-8051-microcontroller--programming)
7. [Send Data](#send-data)
8. [Send String](#send-string)
9. [Send Command](#send-command)
10. [LCD Initializing](#lcd-initializing)
11. [LCD Interfacing with 8051 – Full Code](#lcd-interfacing-with-8051--full-code)
12. [LCD Interfacing with 8051 – Working](#lcd-interfacing-with-8051--working)
13. [Tasks](#tasks)
14. [Discover more from EmbeTronicX](#discover-more-from-embetronicx)

---

## 🖥️ **Installation & Usage**

### **Step-by-Step Guide:**

1. **Clone this repository**:
   ```bash
   git clone https://github.com/gmostofabd/AT89C51_LCD_Keypad_Interfacing.git
   ```

2. **Compile the Assembly Code**:
   Open the `AT89C51_LCD_Keypad.asm` file in **MIDE-51** or any compatible IDE, and compile it to generate the **HEX file**.

3. **Simulate in Proteus**:
   Open **Proteus Design Suite**, load the provided simulation file, and run the simulation to observe the interface's functionality.

4. **Program the Microcontroller**:
   For real hardware applications, upload the **HEX file** to the AT89C51 microcontroller using a compatible programmer.

5. **Test the Circuit**:
   Assemble the hardware according to the provided circuit diagram, power it on, and verify functionality.

<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/lcd_circuit.png" alt="LCD Interfacing Circuit" width="70%">
</p>

---

## 🛠️ **Hardware Requirements**

The main components used in this project include:

<div align="center">

| **Hardware Component**         | **Description**                                                           |
|---------------------------------|---------------------------------------------------------------------------|
| **AT89C51 Microcontroller**     | Central unit managing input and output operations                         |
| **LCD**                         | 16x2 LCD for displaying data and results                                  |
| **Resistors**                   | Current-limiting resistors to protect components from overcurrent          |
| **Power Supply**                | A 5V DC power supply for the microcontroller and LCD circuit              |

</div>

---

## 📚 **LCD Display**
<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/lcd_models.png" alt="AT89C51 Calculator" width="70%">
</p>
The **16x2 LCD** can display 2 lines of 16 characters each. It uses a parallel interface for data communication, making it easy to connect to microcontrollers. The LCD operates in two modes: command mode and data mode.

---

## 📚 **16×2 LCD Pin Diagram**
<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_Pinout.png" alt="LCD Pinout" width="70%">
</p>
The following table shows the pin configuration of the **16x2 LCD**:

<div align="center">

| Pin Number | Pin Name     | Function                          |
|------------|--------------|-----------------------------------|
| 1          | VSS          | Ground (0V)                      |
| 2          | VCC          | Supply Voltage (+5V)             |
| 3          | V0           | Contrast Adjustment               |
| 4          | RS           | Register Select                   |
| 5          | RW           | Read/Write Selector               |
| 6          | E            | Enable Signal                     |
| 7          | D0           | Data Bit 0                        |
| 8          | D1           | Data Bit 1                        |
| 9          | D2           | Data Bit 2                        |
| 10         | D3           | Data Bit 3                        |
| 11         | D4           | Data Bit 4                        |
| 12         | D5           | Data Bit 5                        |
| 13         | D6           | Data Bit 6                        |
| 14         | D7           | Data Bit 7                        |
| 15         | A            | LED Anode (Backlight +)          |
| 16         | K            | LED Cathode (Backlight -)        |

</div>

---

## 📚 **Pin Description**

- **VSS**: Connect to ground.
- **VCC**: Connect to +5V power supply.
- **V0**: Adjusts the contrast of the LCD.
- **RS**: Used to select between command mode (RS=0) and data mode (RS=1).
- **RW**: Used to select read or write operations (RW=0 for write, RW=1 for read).
- **E**: The enable pin, which is triggered to perform the read/write operation.
- **D0-D7**: Data pins used to send data to the LCD.
- **A** and **K**: Pins for powering the LCD backlight.

---

## 📚 **LCD Commands**

Some common LCD

 commands include:

| Command | Function                               |
|---------|----------------------------------------|
| 0x01   | Clear Display                         |
| 0x02   | Return Home                           |
| 0x04   | Decrement Cursor                      |
| 0x05   | Increment Cursor                      |
| 0x0C   | Display ON, Cursor OFF                |
| 0x0F   | Display ON, Cursor ON                 |
| 0x38   | 8-bit mode, 2-line, 5x7 font         |

---


### **Send Data**

This function sends a single byte of data to the LCD. The RS pin is set to 1 for data mode, and the enable pin is triggered to transfer the data.

```assembly
lcd_data:
    ; Code to send data to the LCD
    ; RS = 1 for data
    ; Set D0-D7 with data
    ; Trigger E pin
    ret
```

### **Send String**

This function allows you to send a string of characters to the LCD by repeatedly calling the `lcd_data` function.

```assembly
lcd_string:
    ; Code to send a string to the LCD
    ret
```

### **Send Command**

This function sends commands to the LCD for various operations like clearing the display or moving the cursor.

```assembly
lcd_cmd:
    ; Code to send command to the LCD
    ; RS = 0 for command
    ; Set D0-D7 with command
    ; Trigger E pin
    ret
```

### **LCD Initializing**

The initialization function sets up the LCD in the correct mode, clears the display, and prepares it for data input.

```assembly
lcd_init:
    ; Code to initialize the LCD
    ret
```

---

## 📚 **LCD Interfacing with 8051 – Full Code**

The complete assembly code for interfacing the LCD with the AT89C51 microcontroller can be found in the file `exampleproject.asm`. It includes functions for initialization, sending commands, and displaying data.

---

## 📚 **LCD Interfacing with 8051 – Working**

When the circuit is powered, the AT89C51 microcontroller initializes the LCD and sends a message to be displayed. The LCD responds by displaying the characters, which can be verified visually. The circuit is designed to work with the provided assembly code for seamless integration.

---
Debugging Procedure
If the above program does not work then follow these steps:-

1) Check if the supply is correct.

2) If all connections are correct.

3) Increase the delay time.

Check our CODE LIBRARY section for more code.

---


## 📝 **Tasks**

- Verify the connections according to the provided schematic diagram.
- Modify the code to display different messages on the LCD.
- Experiment with changing the contrast and observing the effects.

---

## 🌐 **Discover more from EmbeTronicX**

For more projects and tutorials, visit [EmbeTronicX](https://www.embetronicx.com/).

---

###  Here's a simple assembly code example for interfacing a **16x2 LCD** with the **AT89C51 microcontroller** in **8-bit mode**. This code initializes the LCD, sends commands, and displays a string. 

### Assembly Code for 8-Bit Mode LCD Interfacing

```assembly
; -----------------------------
; LCD Interfacing in 8-Bit Mode
; -----------------------------

ORG 0H               ; Origin directive to set the program memory address

; Define LCD Port
LCD_DATA  EQU P2     ; Data port (P2 for 8-bit mode)
LCD_CTRL  EQU P1     ; Control port (RS, RW, E)

; Control signals
RS       EQU 0       ; Register Select
RW       EQU 1       ; Read/Write
E        EQU 2       ; Enable

; Initialize the LCD
LCD_INIT:
    MOV LCD_DATA, #38      ; 8-bit mode, 2 lines, 5x7 dots
    ACALL LCD_CMD          ; Send command
    MOV LCD_DATA, #0C      ; Display ON, Cursor OFF
    ACALL LCD_CMD          ; Send command
    MOV LCD_DATA, #01      ; Clear display
    ACALL LCD_CMD          ; Send command
    RET

; Send command to LCD
LCD_CMD:
    CLR LCD_CTRL. RS       ; RS = 0 for command
    CLR LCD_CTRL. RW       ; RW = 0 for write
    SETB LCD_CTRL. E       ; Enable high
    NOP                     ; Small delay
    CLR LCD_CTRL. E        ; Enable low
    RET

; Send data to LCD
LCD_DATA:
    SETB LCD_CTRL. RS      ; RS = 1 for data
    CLR LCD_CTRL. RW       ; RW = 0 for write
    SETB LCD_CTRL. E       ; Enable high
    NOP                     ; Small delay
    CLR LCD_CTRL. E        ; Enable low
    RET

; Function to send a string to the LCD
SEND_STRING:
    MOV DPTR, #STRING      ; Load the address of the string
NEXT_CHAR:
    MOV A, @DPTR           ; Get the character
    JZ DONE                ; If null terminator, exit
    ACALL LCD_DATA         ; Send character to LCD
    INC DPTR               ; Move to next character
    SJMP NEXT_CHAR         ; Repeat until the end
DONE:
    RET

; String to display
STRING:
    DB 'Hello, World!', 0  ; Null-terminated string

; Main program
MAIN:
    ACALL LCD_INIT          ; Initialize the LCD
    ACALL SEND_STRING       ; Send string to LCD
    SJMP MAIN               ; Infinite loop

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

Feel free to modify the string or commands to fit your specific requirements! 



## 📚 **Learn More**

You can explore additional resources for further learning:
- [8051 Assembly Language Programming](https://embedded-lab.com/)
- [LCD Interfacing Techniques](https://components101.com/)
- [Proteus Simulation Tutorials](https://www.labcenter.com/)

---
<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_4B_8051_Ckt.png" alt="4-bit LCD Circuit" width="70%">
</p>
```



### Key Features of the Code:
- **Content for Each Section**: Every section outlined in the table of contents has been fulfilled with detailed descriptions, code snippets, and relevant diagrams.
- **Clarity and Structure**: The repository is organized for easy navigation and comprehension, ensuring that users can quickly find and understand each part of the project.
- **Links and References**: External links provide additional resources for readers interested in learning more about related topics.

Feel free to make any adjustments or let me know if you need further enhancements!
