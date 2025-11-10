

.data

  mat: .zero 1600
  mat1: .zero 1600
  n: .space 4
  m: .space 4
  j: .space 4
  i: .space 4
  k: .space 4
  h: .space 4
  p: .space 4
  sum: .space 4
  comp1: .space 4
  formatScanf: .asciz "%ld"
  formatPrintf: .asciz "%ld "
  endline: .asciz "\n"
  
.text
.global main

main:

citire:


  pushl $n
  pushl $formatScanf
  call scanf
  popl %edx
  popl %edx
  
  pushl $m
  pushl $formatScanf
  call scanf
  popl %edx
  popl %edx
  
  pushl $p
  pushl $formatScanf
  call scanf
  popl %edx
  popl %edx
  
  incl n
  incl m
  
  
  movl  $0,h

  for_h:
  
      movl h,%ecx
      cmp p,%ecx
      je cont_h
      
      pushl $i
      pushl $formatScanf
      call scanf
      popl %edx
      popl %edx
      
      pushl $j
      pushl $formatScanf
      call scanf
      popl %edx
      popl %edx
      
      incl i
      incl j
      
      movl i,%eax
      movl $0,%edx
      movl m,%ebx
      mull %ebx
      addl j,%eax
      
      lea mat,%edi
      movl $1,(%edi,%eax,4)
      
      incl h
      jmp for_h
      
  cont_h:
  
  pushl $k
  pushl $formatScanf
  call scanf
  popl %edx
  popl %edx
  
  
prelucrare:

  movl $0,h
  
  for_h1:
  
    movl h,%ecx
    cmp k,%ecx
    je cont_h1
    movl $1,i
    
      for_i:
      
      movl i,%ecx
      cmp n,%ecx
      je cont_i
      movl  $1,j
      
         for_j:
         
         movl j,%ecx
         cmp m,%ecx
         je cont_j
         
         
         
         movl $0,sum
         
         suma_elementelor:
         
         decl i
         decl j
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         incl i
         incl j
         
         
         decl i
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         
         incl i
         
         
         decl i
         incl j
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         
         incl i
         decl j
         
         
         decl j
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         incl j
         
         
         incl j
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         decl j
         
         
         incl i
         decl j
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         decl i
         incl j
         
         
         
         incl i
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         decl i
         
         
         incl i
         incl j
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl sum,%edx
         addl %ebx,%edx
         movl %edx,sum
         
         
         decl i
         decl j
         
         
         proprietati:
         
         
         movl i,%eax
         movl $0,%edx
         movl m,%ebx
         mull %ebx
         addl j,%eax
         
         lea mat,%edi
         movl (%edi,%eax,4),%ebx
         
         movl $1,%ecx
         cmp %ecx,%ebx
         je viu
         
         
         movl $0,%ecx
         cmp %ecx,%ebx
         je mort
         
         
         
            viu:
            
            movl i,%eax
            movl $0,%edx
            movl m,%ebx
            mull %ebx
            addl j,%eax
         
            lea mat1,%edi
            movl $1,%ebx
            movl %ebx,(%edi,%eax,4)
            
            movl $2,%ecx
            movl sum,%ebx
            cmp %ecx,%ebx
            jl sub
            
            
            movl $3,%ecx
            movl sum,%ebx
            cmp %ecx,%ebx
            jg sub
            
            jmp continue
            
            sub:
            
            movl i,%eax
            movl $0,%edx
            movl m,%ebx
            mull %ebx
            addl j,%eax
         
            lea mat1,%edi
            movl $0,%ebx
            movl %ebx,(%edi,%eax,4)
            
            
            
            
            
            
            
            
            mort:
            
            
            movl i,%eax
            movl $0,%edx
            movl m,%ebx
            mull %ebx
            addl j,%eax
         
            lea mat1,%edi
            movl $0,%ebx
            movl %ebx,(%edi,%eax,4)
            
            
            movl $3,%ecx
            movl sum,%ebx
            cmp %ecx,%ebx
            je pes
            
            jmp continue
            
            pes:
            
            
            movl i,%eax
            movl $0,%edx
            movl m,%ebx
            mull %ebx
            addl j,%eax
         
            lea mat1,%edi
            movl $1,%ebx
            movl %ebx,(%edi,%eax,4)
         
         
         
      
         continue:
    
         incl j
         jmp for_j
         
         cont_j:
         
    
      incl i
      jmp for_i
    
      cont_i:
      
    movl $0,i
    
    for_i2:
        
        movl i,%ecx
        cmp n,%ecx
        jg cont_i2
        movl $0,j
        
           for_j2:
           
           movl j,%ecx
           cmp m,%ecx
           jg cont_j2
           
           
           movl i,%eax
           movl $0,%edx
           movl m,%ebx
           mull %ebx
           addl j,%eax
           
           lea mat1,%edi
           movl (%edi,%eax,4),%ecx
           
           movl i,%eax
           movl $0,%edx
           movl m,%ebx
           mull %ebx
           addl j,%eax
           
           
           lea mat,%edi
           movl %ecx,(%edi,%eax,4)
           
           incl j
           jmp for_j2
           
        
       cont_j2:
       
       incl i
       jmp for_i2
       
       
    cont_i2:
           
           
           
           
        
           
    
    incl h
    jmp for_h1
    
    cont_h1:
    
    
  
  
  
  
  
afisare:



  movl $1,i
  
  for_i1:
  
    movl i,%ecx
    cmp n,%ecx
    je cont_i1
    
    movl $1,j
    
        for_j1:
        
        movl j,%ecx
        cmp m,%ecx
        je cont_j1
        
        movl i,%eax
        movl $0,%edx
        movl m,%ebx
        mull %ebx
        addl j,%eax
        
        lea mat,%edi
        movl (%edi,%eax,4),%ebx
        
        
        pushl %ebx
        pushl $formatPrintf
        call printf
        popl %edx
        popl %edx
        
        pushl $0
        call fflush
        popl %edx
        
        incl j
        jmp for_j1
        
    cont_j1:
    
    pushl $endline
    call printf
    popl %edx
    
    pushl $0
    call fflush
    popl %edx
    
    
    incl i
    jmp for_i1
    
    
cont_i1:

exit:

movl $1,%eax
xor %ebx,%ebx
int $0x80



    
      
      
        
  
  
  
  
  
  
  
  