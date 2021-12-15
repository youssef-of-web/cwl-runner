#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
inputs:
  in1:
    type: int
    inputBinding:
      position: 1  
  a_new_var:
    type: int
    inputBinding:
      position: 2     
outputs: 
  out1:
    type: string