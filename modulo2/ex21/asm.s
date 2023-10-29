#Code Position Raise in Salary
#10 Manager 500 euros
#11 Engineer 400 euros
#12 Technician 300 euros
#All other codes All other positions 250 euros

.section .data
.global code
.global salary

.section .text
.global new_salary

new_salary:
    # Load the employee code (code) and current salary (salary) into registers
    movw code(%rip), %cx
    movw salary(%rip), %dx

    # Check the employee code to determine the salary increase
    cmp $10, %cx
    je manager

    cmp $11, %cx
    je engineer

    cmp $12, %cx
    je technician

    # If none of the specific cases match, add $250 to the current salary
    addw $250, %dx
    movw %dx, %ax
    jmp end

manager:
    # Increase the salary for a manager by $500
    addw $500, %dx
    movw %dx, %ax
    jmp end

engineer:
    # Increase the salary for an engineer by $400
    addw $400, %dx
    movw %dx, %ax
    jmp end

technician:
    # Increase the salary for a technician by $300
    addw $300, %dx
    movw %dx, %ax
    jmp end

end:
    # Return the new salary in ax
    ret
